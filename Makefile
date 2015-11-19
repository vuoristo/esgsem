.PHONY: all compile clean info
compile:

BASEFILE:=esgsem_ddf
LATEXFILE:=$(BASEFILE).tex
OUTPUTFILE:=$(BASEFILE).pdf
INTERMEDIATES:=$(BASEFILE).log $(BASEFILE).aux $(BASEFILE).out \
	$(BASEFILE).bbl $(BASEFILE).blg

compile:
	pdflatex $(LATEXFILE)
	bibtex $(BASEFILE)
	pdflatex $(LATEXFILE)
	pdflatex $(LATEXFILE)

info:
	@echo "Source: $(LATEXFILE)"
	@echo "Target: $(OUTPUTFILE)"
	@echo "Intermediates: $(INTERMEDIATES)"

clean:
	$(RM) $(INTERMEDIATES)

realclean: clean
	$(RM) $(OUTPUTFILE)
