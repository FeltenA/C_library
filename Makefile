##
## ETNA PROJECT, 04/10/2019 by felten_a
## [...]
## File description:
##      [...]
##

CC		=	gcc
DIR		=	./lib/my
SRC		=	$(DIR)/my_putchar.c	\
			$(DIR)/my_putstr.c	\
			$(DIR)/my_strlen.c	\
			$(DIR)/my_getnbr.c	\
			$(DIR)/my_putnbr.c	\
			$(DIR)/my_isneg.c	\
			$(DIR)/my_swap.c	\
			$(DIR)/my_strcpy.c	\
			$(DIR)/my_strncpy.c	\
			$(DIR)/my_strcmp.c	\
			$(DIR)/my_strncmp.c	\
			$(DIR)/my_strcat.c	\
			$(DIR)/my_strncat.c	\
			$(DIR)/my_strstr.c	\
			$(DIR)/my_strdup.c
OBJ		=	$(SRC:%.c=%.o)
LIB		=	./lib/my/libmy.a
H		=	my.h
RM		=	rm -f
CP		=	cp

$(LIB):		$(OBJ)
			ar r $(LIB) $(OBJ)
			ranlib $(LIB)
			$(CP) $(LIB) ./lib
all:		$(LIB)
clean:
			$(RM) $(OBJ)
fclean:				clean
			$(RM) $(LIB)
			$(RM) ./lib/libmy.a
re:			fclean all
