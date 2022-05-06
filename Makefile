EN_TARGET_NAME := "Carlos Carral Cortés.pdf"
ES_TARGET_NAME := "Carlos Carral Cortés.pdf"

all: en es

en: resume_en.tex
	mkdir en -p
	pdflatex -jobname=carlos_en -output-directory="en" resume_en.tex
	mv en/carlos_en.pdf en/$(EN_TARGET_NAME)

es: resume_es.tex
	mkdir es -p
	pdflatex -jobname=carlos_es -output-directory="es" resume_es.tex
	mv es/carlos_es.pdf es/$(ES_TARGET_NAME)

clean:
	rm en -rf
	rm es -rf
