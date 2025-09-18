SHELL := /bin/bash

.PHONY: setup dev serve build update add rm st gc clean

setup:
	julia --project=@. -e 'import Pkg; Pkg.instantiate(); Pkg.precompile()'

dev: setup
	@echo "env ready"

serve:
	julia --project=@. -e 'using Franklin; serve(host="0.0.0.0")'

build:
	julia --project=@. -e 'using Franklin; serve(single=true)'

update:
	julia --project=@. -e 'import Pkg; Pkg.update()'

add:
	julia --project=@. -e 'import Pkg; Pkg.add(ENV["PKG"])'

rm:
	julia --project=@. -e 'import Pkg; Pkg.rm(ENV["PKG"])'

st:
	julia --project=@. -e 'import Pkg; Pkg.status()'

gc:
	julia --project=@. -e 'import Pkg; Pkg.gc()'

clean:
	rm -rf __site
