FILES := $(wildcard *.md)

all: $(FILES)
	pandoc -S --toc --latex-engine=xelatex --variable mainfont="DejaVu Serif" -o recipes.pdf metadata.txt $(FILES)
