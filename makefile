NAME   	= run
SRC  	= src/
C_FILE 	= $(SRC)main.cpp
C_FILE += $(SRC)boltzmann.cpp
C_FILE += $(SRC)output_data.cpp
#C_FILE += $(SRC)chemin.cpp

all : $(NAME)

$(NAME) :
	@g++ -g $(C_FILE) -o $(NAME)
debug	:
	@rm $(NAME)
	@g++ $(C_FILE) -o $(NAME) -g

clean 	:
	@rm $(NAME)

re : clean all
