CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic
SRC=main.c _strlen.c aux_functs.c builts_ints.c ctrlc.c dir_check.c find_path.c functions.c print_error.c space_check.c
OBJ=$(SRC:%.c=%.o)
NAME=hsh
RM=rm

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) -f *~ $(NAME)

oclean:
	$(RM) -f $(OBJ)

fclean:
	$(RM) -f *~ $(NAME)
	$(RM) -f $(OBJ)

re: oclean all