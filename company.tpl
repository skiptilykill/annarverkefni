<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>annarverkefni</title>
    <link rel="stylesheet" href="/static_files/styles_company.css" type="text/css">
    <link href="/static_files/favicon.ico" rel="icon" type="image/x-icon" />
</head>
	<br>
	<center><a href="/">Heim</a></center>
	<br>
<body>
    % for station in stats['results']:
    %   if station['company'] == id:
            <div class="box">
                <p><a href="/moreinfo/{{station['key']}}">{{station['key']}}</a></p>
                <p>{{station['company']}}</p>
                <p>{{station['name']}}</p>
            </div>
        % end
    % end
	<br>
	<center><a href="/">Heim</a></center>
	<br>
</body>
</html>