TEX = tabletop.tex header.tex 
TEX += title.tex
TEX += intro.tex
TEX += about.tex
TEX += dedication.tex
TEX += modeling.tex
TEX += title2004.tex
TEX += safety.tex
TEX += foreword.tex
TEX += introduction.tex
TEX += projects.tex
TEX += scotty.tex
TEX += chap1.tex chap2.tex chap3.tex chap4.tex

LATEX = pdflatex --output-directory=tmp -halt-on-error
BIBER = biber

tabletop.pdf: $(TEX)
	$(LATEX) tabletop
#	makeindex tmp/tabletop
	$(LATEX) tabletop
	cp tmp/tabletop.pdf $@
