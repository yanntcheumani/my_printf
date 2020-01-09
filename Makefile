##
## EPITECH PROJECT, 2019
## day10
## File description:
## task01
##

SRC	=	lib/my/my_putchar.c \
		lib/my/my_put_nbr.c \
		lib/my/my_putstr.c \
		lib/my/my_printf_s.c   \
		lib/my/my_strcpy.c  \
		lib/my/my_strlen.c  \
		my_printf.c \
		lib.c       \
		my_printf_type.c    \
		my_printf_convert.c

OBJ	=	$(SRC:.c=.o)

NAME 	=	libmy.a

all: 	$(NAME)

############create lybrairies ###################
$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)

############clean files tmp and *.o##############
clean:		$(OBJ)
	rm -f $(OBJ)

############clean *.o and $(NAME)################
fclean:	clean
	rm -f $(NAME)
	find . -name "*[#|~]" -delete  -o -name "[#]*" -delete


re: all clean

auteur:
	echo $(USER) > auteur
