##
## EPITECH PROJECT, 2023
## Semester_2
## File description:
## Makefile
##

SRC = test_coding_style.c \

OBJ =	$(SRC:.c=.o)

NAME =	pain_au_chocolat

CSFML = -lcsfml-graphics -lcsfml-system -lcsfml-audio -lcsfml-window

LIB = -L lmy 

all:	$(NAME)

$(NAME): $(OBJ)
		ar rc libmy.a $(OBJ)
		gcc -o $(NAME) test_coding_style.c -L./ -lmy

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)
		rm -f libmy.a

re:		fclean all

test_run:
		@echo "test"
