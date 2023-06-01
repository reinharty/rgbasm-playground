rgbasm -Werror -Weverything -Hl -o main.o main.rgbasm
rgbasm -Werror -Weverything -Hl -o sample.o sample.rgbasm
rgblink --dmg --tiny --map test.map --sym test.sym -o test.gb main.o sample.o
rgbfix --title game --pad-value 0 --validate test.gb