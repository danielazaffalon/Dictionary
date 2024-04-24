TARGET  = dic
CFLAGS  = -Wall -Wextra -Werror
OBJ_DIR = ./obj
SRC_DIR = ./src
OBJS    = $(OBJ_DIR)/main.o

$(TARGET) : $(OBJS)
	cc $(CFLAGS) $(OBJS) -o $(TARGET)

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.c
	mkdir -p $(OBJ_DIR)
	cc -c $(CFLAGS) $< -o $@

.PHONY : fclean
fclean:
	@rm -rf $(OBJ_DIR) ./dic