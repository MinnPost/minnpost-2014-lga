#SPECIAL VERSION OF csv to html table; DON'T COPY THIS FOR OTHER PROJECTS!!

import csv

outf = open('lga-table.html', 'a')

outf.write('<table style="border-collapse:collapse;">\n')

inf = 'lga-grants-table-with-population-for-html.csv' #csv to convert

data = csv.reader(open(inf, 'rU'), delimiter=';', quotechar='"')

for row in data:
	try:
		population = int(row[7])
	except:
		population = "City size"
	if population < 2500:
		size = 'small'
	elif population < 10001:
		size = 'medium'
	else:
		size = 'large'
	outf.write('\t<tr class="%s">\n' % (size))

	outf.write("""
				<td style="text-align:left;">%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>
				<td>%s</td>\n""" % (row[5],row[6],row[1],row[2],row[3],row[4],row[10],row[11],size))
	outf.write('\t</tr>\n')
	
outf.write('</table>')
outf.close()