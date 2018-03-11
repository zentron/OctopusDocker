
#Get Version
docker run --rm  roberterez/octopusdocker:4.31.2-alpine version

docker run --rm  roberterez/octopusdocker:4.31.2-alpine help


#Pack
docker run --rm -v ~/development/RobsAppVeyopr:/src -v $(pwd):/dst octo pack --id=robs --version=3.1.4 --overwrite --outFolder=/dst 
docker run --rm -v C:\Development\Sandbox\tempgif:C:\src  -v  "$(Convert-Path .):c:\dst" octo pack --id=robs --version=3.1.4 --overwrite --outFolder=/dst

#Push 
docker run --rm -v $(pwd):/src octo push --package robs.3.1.4.nupkg --replace-existing --server http://c120dd13.ngrok.io  --apiKey $apikey
docker run --rm -v "$(Convert-Path .):C:\src" octo push --package robs.3.1.4.nupkg --replace-existing --server http://c120dd13.ngrok.io  --apiKey $env:apikey


#Other Command
docker run --rm octo list-machines --server http://c120dd13.ngrok.io --apiKey=$apikey
docker run --rm octo list-machines --server http://c120dd13.ngrok.io --apiKey=$env:apikey


$env:apikey="API-ZNRMR7SL6L3ATMOIC7GKJDKVPY"
set apikey="API-ZNRMR7SL6L3ATMOIC7GKJDKVPY"

 
#docker run -it --rm --entrypoint "/bin/bash"  octo