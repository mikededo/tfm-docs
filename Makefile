lint:
	latexindent *.tex -s -w

compile:
	xelatex memory.tex

build:
	make lint && make compile

production:
	make build && make compile && make clean

abstract:
	xelatex abstract.tex && make clean	

clean:
	@rm -f `find . -type f -name '*aux' -o -name '*bak*' -o -name '*lof' -o -name '*log' -o -name '*toc' -o -name '*.DS_Store'`
