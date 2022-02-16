# nusave-docker
A dockerized [nusave](https://github.com/eli-ba/nusave).

## Usage

You need to map your project directory to /project within the container, using:
`-v /projects/myproject:/project`.

You need to map your nuget cache directory to /out within the container, using:
`-v /projects/cache:/out`.

Additionally NuGet sources can be provided using the `NUSAVE_SOURCES` environment variable, using:
`-e NUSAVE_SOURCES=https://myotherhost.com/artifactory/api/nuget/v3/nuget-integration`.

Multiple sources can be comma-separated.

Combining all these:

`docker run --rm -it -e NUSAVE_SOURCES=https://my.nuget.com/blah.json -v C:\Projects\myproject\:/project -v C:\Projects\nugetcache:/out nusave`