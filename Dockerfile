FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ./*.csproj ./LiveMusicFinder/
# copy everything else and build app
COPY ./. ./LiveMusicFinder/
WORKDIR /app/LiveMusicFinder
RUN dotnet build
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app
COPY --from=build /app/LiveMusicFinder/out ./
EXPOSE 5000 5001
ENTRYPOINT ["dotnet", "LiveMusicFinder.dll"]