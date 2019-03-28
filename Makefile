# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: gzanarel <gzanarel@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/02 13:20:07 by sifouche     #+#   ##    ##    #+#        #
#    Updated: 2019/03/28 15:40:29 by gzanarel    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libft.a
SRC = ./ft_memset.c \
	  ./ft_bzero.c \
	  ./ft_memcpy.c \
	  ./ft_memccpy.c \
	  ./ft_memmove.c \
	  ./ft_memchr.c \
	  ./ft_memcmp.c \
	  ./ft_strlen.c \
	  ./ft_strdup.c \
	  ./ft_strcpy.c \
	  ./ft_strncpy.c \
	  ./ft_strcat.c \
	  ./ft_strncat.c \
	  ./ft_strlcat.c \
	  ./ft_strchr.c \
	  ./ft_strrchr.c \
	  ./ft_strstr.c \
	  ./ft_strnstr.c \
	  ./ft_strcmp.c \
	  ./ft_strncmp.c \
	  ./ft_atoi.c \
	  ./ft_isalpha.c \
	  ./ft_isdigit.c \
	  ./ft_isalnum.c \
	  ./ft_isascii.c \
	  ./ft_isprint.c \
	  ./ft_toupper.c \
	  ./ft_tolower.c \
	  ./ft_memalloc.c \
	  ./ft_memdel.c \
	  ./ft_strnew.c \
	  ./ft_strdel.c \
	  ./ft_strclr.c \
	  ./ft_striter.c \
	  ./ft_striteri.c \
	  ./ft_strmap.c \
	  ./ft_strmapi.c \
	  ./ft_strequ.c \
	  ./ft_strnequ.c \
	  ./ft_strsub.c \
	  ./ft_strjoin.c \
	  ./ft_strtrim.c \
	  ./ft_strsplit.c \
	  ./ft_itoa.c \
	  ./ft_putchar.c \
	  ./ft_putstr.c \
	  ./ft_putendl.c \
	  ./ft_putnbr.c \
	  ./ft_putchar_fd.c \
	  ./ft_putstr_fd.c \
	  ./ft_putendl_fd.c \
	  ./ft_putnbr_fd.c \
	  ./ft_strrev.c \
	  ./ft_strcount_words.c \
	  ./ft_strlen_c.c \
	  ./ft_freetab.c \
	  ./ft_lstnew.c \
	  ./ft_lstdelone.c \
	  ./ft_lstdel.c \
	  ./ft_lstadd.c \
	  ./ft_lstiter.c \
	  ./ft_lstmap.c \
	  ./ft_realloc.c \
	  ./get_next_line.c \
	  ./ft_imaxtoa_base.c \
	  ./ft_uimaxtoa_base.c \
	  ./ft_printf.c \
	  ./print_undef.c \
	  ./parse.c \
	  ./parse_types.c \
	  ./parse_precwidth.c \
	  ./parse_flagssize.c \
	  ./get_char.c \
	  ./get_str.c \
	  ./get_int.c \
	  ./get_width.c \
	  ./get_prec.c \
	  ./ft_qsort.c

INC = ./libft.h ./ft_printf.h
FLAGS = -Wall -Werror -Wextra
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(INC)
		@ar -rc $(NAME) $(OBJ)
		@ranlib $(NAME)
		@echo "\n\033[32;01mlibft.a.. done !\033[00m\n"

%.o: %.c $(INC)
		@gcc $(FLAGS) -c $< -o $@

clean:
		@rm -f $(OBJ)
		@echo "\n\033[31;01m make Clean..\033[00m\n"


fclean: clean
		@rm -f $(NAME)
		@echo "\n\033[31;01m make Fclean..\033[00m\n"

re: fclean all
