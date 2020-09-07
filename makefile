
PANOPTS := -V center=false -V history=false -V revealjs-url=reveal.js --template=template.html
BIBOPTS := --bibliography ~/Papers/all.bib --filter pandoc-citeproc

all: regression_vis.html

regression_vis.html: regression_vis.md template.html
	pandoc -s -t revealjs $(PANOPTS) $(BIBOPTS) -o $@ $<

clean:
	rm -f regression_vis.html
