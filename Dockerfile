FROM mcr.microsoft.com/dotnet/core/aspnet

RUN apt-get update && apt-get upgrade
RUN apt-get install wget unzip -y
RUN wget https://github.com/eli-ba/nusave/releases/download/v3.1.1/nusave-3.1.1-linux-x64.zip
RUN unzip nusave-3.1.1-linux-x64.zip -d nusave

CMD ./nusave/nusave cache sln /project/*.sln --cacheDir /out/ --source ${NUSAVE_SOURCES}