default: clean entries/*.tex entries/*/*.tex main.tex
	pdflatex -jobname changes "\def\UseOption{changes}\input{main}"
	pdflatex -jobname changes "\def\UseOption{changes}\input{main}"

entries/*.tex: entries/*/*.tex
	./get-inputs.sh

no-changes: clean main.tex entries/*.tex entries/*/*.tex
	pdflatex main
	pdflatex main

clean:
	rm -f *.pdf
	rm -f *.4ct
	rm -f *.4tc
	rm -f *.aux
	rm -f *.css
	rm -f *.dvi
	rm -f *.html
	rm -f *.idv
	rm -f *.lg
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
	rm -f *.tmp
	rm -f *.toc
	rm -f *.xref
	rm -f *.png

