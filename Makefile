FILES := $(wildcard *.md)

all: $(FILES)
	pandoc -f markdown-smart --toc --pdf-engine=xelatex --variable mainfont="DejaVu Serif" -o recipes.pdf metadata.txt $(FILES)
