NAME		=	libftprintf.a

SRCS		=	libft/ft_memset.c \
			libft/ft_bzero.c \
			libft/ft_memcpy.c \
			libft/ft_memccpy.c \
			libft/ft_memmove.c \
			libft/ft_memchr.c \
			libft/ft_memcmp.c \
			libft/ft_strlen.c \
			libft/ft_isalpha.c \
			libft/ft_isdigit.c \
			libft/ft_isalnum.c \
			libft/ft_isprint.c \
			libft/ft_isascii.c \
			libft/ft_tolower.c \
			libft/ft_toupper.c \
			libft/ft_strdup.c \
			libft/ft_strchr.c \
			libft/ft_strrchr.c \
			libft/ft_strcmp.c \
			libft/ft_strncmp.c \
			libft/ft_strlcat.c \
			libft/ft_strlcpy.c \
			libft/ft_strnstr.c \
			libft/ft_atoi.c \
			libft/ft_substr.c \
			libft/ft_strjoin.c \
			libft/ft_strtrim.c \
			libft/ft_split.c \
			libft/ft_itoa.c \
			libft/ft_strmapi.c \
			libft/ft_putchar_fd.c \
			libft/ft_putstr_fd.c \
			libft/ft_putendl_fd.c \
			libft/ft_putnbr_fd.c \
			libft/ft_calloc.c \
			printf/ft_printf.c \
			printf/ft_printf_utils.c

SRCS_BONUS	=	libft/ft_lstnew_bonus.c \
			libft/ft_lstadd_front_bonus.c \
			libft/ft_lstsize_bonus.c \
			libft/ft_lstlast_bonus.c \
			libft/ft_lstadd_back_bonus.c \
			libft/ft_lstdelone_bonus.c \
			libft/ft_lstclear_bonus.c \
			libft/ft_lstiter_bonus.c \
			libft/ft_lstmap_bonus.c \
			
OBJS		=	${SRCS:.c=.o}

OBJS_BONUS	=	${SRCS_BONUS:.c=.o}

INC_PATH	=	-I./inc

CC		=	gcc

FLAGS		=	-Wall -Wextra -Werror

$(NAME):		${OBJS}
			ar rc ${NAME} ${OBJS}

.c.o:			${SRCS} ${SRCS_BONUS}
			${CC} ${FLAGS} ${INC_PATH} -c $<  -o ${<:.c=.o}

all:			$(NAME)

bonus:			${OBJS} ${OBJS_BONUS}
			ar rc ${NAME} ${OBJS} ${OBJS_BONUS}

clean:		
			rm -f ${OBJS} ${OBJS_BONUS}

fclean:			clean
			rm -f ${NAME}

re:			fclean bonus
			

