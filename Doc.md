https://developer.okta.com/blog/2019/04/03/build-a-crud-app-with-aspnet-22-and-entity-framework

1 - dotnet new mvc -n LiveMusicFinder

2 - cd LiveMusicFinder

3 - code .

4 - dotnet add package Microsoft.VisualStudio.Web.CodeGeneration.Design

5 - dotnet ~/.dotnet/tools/.store/dotnet-aspnet-codegenerator/2.2.3/dotnet-aspnet-codegenerator/2.2.3/tools/netcoreapp2.1/any/dotnet-aspnet-codegenerator.dll controller -name LiveShowsController -async -m LiveMusicFinder.Models.LiveShow -dc LiveMusicFinder.Data.ApplicationDbContext -namespace Controllers -outDir Controllers -udl
