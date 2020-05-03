.PHONY: mitschrift.pdf punkte clean loesungen

clean:
	rm -f *.aux *.log *.fls *.out *.fdb_latexmk

punkte:
	awk -f punktestatistik.awk punktetabelle.tsv

mitschrift.pdf: mitschrift.latex
	latexmk -pdf -use-make -pvc mitschrift.latex

loesungen: loesung01.pdf loesung02.pdf loesung03.pdf loesung04.pdf loesung05.pdf loesung06.pdf loesung07.pdf loesung10.pdf

loesung01.pdf: loesung01.latex
	latexmk -pdf -xelatex -use-make $<

loesung02.pdf: loesung02.latex
	latexmk -pdf -xelatex -use-make $<

loesung03.pdf: loesung03.latex
	latexmk -pdf -xelatex -use-make $<

loesung04.pdf: loesung04.latex
	latexmk -pdf -xelatex -use-make $<

loesung05.pdf: loesung05.latex
	latexmk -pdf -xelatex -use-make $<

loesung06.pdf: loesung06.latex
	latexmk -pdf -xelatex -use-make $<

loesung07.pdf: loesung07.latex
	latexmk -pdf -xelatex -use-make $<

loesung10.pdf: loesung10.latex
	latexmk -pdf -xelatex -use-make $<
