# Settings
PDFLATEX_FLAGS = -shell-escape

# Goals

all: poster.pdf

poster.pdf: tex/poster.tex $(wildcard tex/*.tex)
	pdflatex $(PDFLATEX_FLAGS) $<
	bibtex poster
	pdflatex $(PDFLATEX_FLAGS) $<
	pdflatex $(PDFLATEX_FLAGS) $<

clean:
	rm -rf *.log *.dvi *.aux *.toc *.lof *.lot *.lol *.out *.bbl *.blg _minted-poster/
	rm -f tex/*.aux
	rm -f poster.pdf

