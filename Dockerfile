FROM ipcrm/docker-base-testing-things:21
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out

EXPOSE 8080

ENTRYPOINT ["dotnet", "./out/dotnetcoreapp.dll"]
