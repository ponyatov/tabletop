TEX = tabletop.tex header.tex

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

tmp/tabletop.pdf: $(TEX)
	$(LATEX) tabletop
#	makeindex tmp/tabletop
	$(LATEX) tabletop
