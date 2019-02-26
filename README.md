# movie_asa10

午前十時の映画祭2019 schedule用XSLT(XSL transformation)とCSV, etc
http://asa10.eiga.com/2019/

## Usage:

```bash
$ curl --silent http://asa10.eiga.com/2019/theater/all/ |
  xsltproc --encoding utf-8 --html movie_asa10.xsl - 2>/dev/null
# To add year info.
$ curl --silent http://asa10.eiga.com/2019/theater/all/ |
  xsltproc --encoding utf-8 --html movie_asa10.xsl - 2>/dev/null |
  awk -F',' \
 'BEGIN{start="2019";end="2019"};$1 < 4 {start="2020"};$3 <4{end="2020"};{printf("%s,%s,%s,%s,%s,%s,%s\n",start,$1,$2,end,$3,$4,$5)}'
```

## 2019_group_A_1.csv:

Group A映画館スケジュール

## 2019_group_B_1.csv:

Group B映画館スケジュール

## movie_asa10.xsl:

XSLT stylesheet
