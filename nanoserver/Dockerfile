FROM microsoft/dotnet:2.1-runtime-nanoserver-sac2016
MAINTAINER robert.erez deveops@octopus.com

ENV OCTO_TOOLS_VERSION 4.31.1
ENV OCTO_TOOLS_DOWNLOAD_URL https://download.octopusdeploy.com/octopus-tools/$OCTO_TOOLS_VERSION/OctopusTools.$OCTO_TOOLS_VERSION.portable.zip

RUN Invoke-WebRequest $Env:OCTO_TOOLS_DOWNLOAD_URL -OutFile OctopusTools.zip; \
	Expand-Archive OctopusTools.zip -DestinationPath octo; \
	Remove-Item -Force OctopusTools.zip; \
	mkdir src |Out-Null

WORKDIR /src
ENTRYPOINT ["dotnet", "/octo/Octo.dll"]
