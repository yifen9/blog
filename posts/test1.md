+++
tags = ["Julia", "Writing"] 

rss_title = "Creating your own blog with Julia and Franklin"
rss_description = "Describing the steps to create your own blog, so you can stop posting your code on Instagram"
rss_pubdate = Date(2023, 8, 10) 
+++

# This is a title in my first post

So I can write anything

## Here is an introduction

We are going to write some code:

using LinearAlgebra
a = [1, 2, 3, 3, 4, 5, 2, 2]
@show dot(a, a)
println(dot(a, a))