# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ynamiki <ynamiki@student.42tokyo.jp>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/21 17:47:08 by ynamiki           #+#    #+#              #
#    Updated: 2020/07/21 20:40:46 by ynamiki          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		= source.txt
TARGET	= target.txt
RES		= result.txt
README	= readme.txt

all:
	@nl $(SRC) | GREP_COLOR='1;32' egrep --color -if $(TARGET)

init:
	touch $(SRC) $(TARGET) $(RES)

get:
	@nl $(SRC) | GREP_COLOR='1;32' egrep --color -if $(TARGET) > $(RES)

search:
	@nl $(SRC) | grep --color=auto -E $(ARG)
	
source:
	@echo "--------------------------------------------------"
	@nl $(SRC)
	@echo "--------------------------------------------------"

target:
	@echo "--------------------------------------------------"
	@nl $(TARGET)
	@echo "--------------------------------------------------"

clean:
	@rm $(SRC) $(TARGET) $(RES)

help:
	@cat $(README)

roy:
	@echo "You are the best roy!\n\t\t -max"
