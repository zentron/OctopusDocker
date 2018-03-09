FROM microsoft/dotnet:2.0.5-runtime-jessie
MAINTAINER someone someone@octopus.com

ENV OCTO_TOOLS_VERSION 4.31.1

WORKDIR /octo
RUN curl https://download.octopusdeploy.com/octopus-tools/${OCTO_TOOLS_VERSION}/OctopusTools.${OCTO_TOOLS_VERSION}.portable.tar.gz --output OctopusTools.tar.gz
RUN tar -zxvf OctopusTools.tar.gz

WORKDIR /src
ENTRYPOINT ["dotnet", "/octo/Octo.dll"]
