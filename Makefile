lint:
	latexindent *.tex -s -w

compile:
	xelatex memory.tex

build:
	make lint && make compile

clean:
	rm *.aux *.bak* *.lof *.lot *.log *.toc

