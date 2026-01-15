# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmelero- <cmelero-@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/01/09 19:14:31 by cmelero-          #+#    #+#              #
#    Updated: 2026/01/15 09:30:40 by cmelero-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

FLAG = -Wall -Wextra -Werror

HEADER = Makefile libft.h
SRC = ft_printf.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

bonus: $(NAME)

$(NAME): $(OBJ)
	@ar -rcs $(NAME) $(OBJ) || { @echo "Error creating $(NAME) $(OBJ)"; exit 1; }	
	@echo "$(NAME) created" 

%.o: %.c $(HEADER)
	cc $(FLAG) -c $< -o $@

bonus: $(NAME)

clean:
	@rm -f $(OBJ) || { @echo "Error removing $(OBJ)"; exit 1; }
	@echo "OBJ removed"

fclean: clean
	@rm -f $(NAME) || { @echo "Error removing $(NAME)"; exit 1; }
	@echo "$(NAME) removed"

re: fclean all

.PHONY: all clean fclean re bonus
