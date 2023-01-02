# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkhellou < mkhellou@student.1337.ma>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 17:56:00 by  mkhellou         #+#    #+#              #
#    Updated: 2023/01/01 17:42:43 by mkhellou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
AR = ar rcs
CFLAGS = -Wall -Wextra -Werror -I .
RM = rm -rf
HEADER  = libft.h

SRC = ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c \
	ft_printf.c \
	ft_printf_utils.c \
	get_next_line.c \
	get_next_line_utils.c \

BSRC = ft_lstadd_back.c \
	ft_lstadd_front.c \
	ft_lstclear.c \
	ft_lstdelone.c \
	ft_lstiter.c \
	ft_lstlast.c \
	ft_lstmap.c \
	ft_lstnew.c \
	ft_lstsize.c \


OBJ = $(SRC:.c=.o)

BOBJ = $(BSRC:.c=.o)

all: $(NAME)

bonus: all $(BOBJ)
	@$(AR) $(NAME) $(BOBJ)

$(NAME):$(OBJ)
	@$(AR) $@ $^

%.o: %.c $(HEADER)
	@$(CC) $(CFLAGS) -c $< 

clean:
	@$(RM) $(OBJ) $(BOBJ)
fclean: clean
	@$(RM) $(NAME)
re: fclean all

.PHONY: all clean fclean re bonus