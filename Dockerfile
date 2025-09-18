FROM julia:latest

RUN apt-get update && apt-get install -y git make ca-certificates && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/site

COPY Project.toml Manifest.toml ./

RUN julia -e 'import Pkg; Pkg.activate("."); Pkg.instantiate(); Pkg.precompile()'