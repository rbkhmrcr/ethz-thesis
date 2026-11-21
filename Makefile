TEXFLAGS = -bibtex -pdf -interaction=nonstopmode
BUILD_DIR = build

.PHONY: all clean $(BUILD_DIR)/thesis.pdf

all: $(BUILD_DIR)/thesis.pdf

$(BUILD_DIR)/thesis.pdf: thesis.tex $(BUILD_DIR)
	latexmk $(TEXFLAGS) -jobname=$(@:.pdf=) $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

