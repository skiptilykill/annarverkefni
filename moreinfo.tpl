<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <link rel="stylesheet" href="/static_files/styles_company.css" type="text/css">
    <link href="/static_files/favicon.ico" rel="icon" type="image/x-icon" />
    <title>Upplýsingar</title>
</head>
<body>
    <p><a href="/">Til baka</a></p>
    % for station in stats['results']:
    %   if station['key'] == key:
            <h1>Söluaðili: {{station['company']}}</h1>
            <h1>Staður: {{station['name']}}</h1>
            <p>verð á bensín 95: {{station['bensin95']}}</p>
            <p>verð á dísel: {{station['diesel']}}</p>
    %   end
    % end
</body>
</html>