/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mroux <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/02 15:58:33 by mroux             #+#    #+#             */
/*   Updated: 2019/12/02 19:45:45 by mroux            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include "libft.h"
# include <stdarg.h>
# define RIGHT_ADJUSTED 0
# define LEFT_ADJUSTED 1
# define ZERO_PADDING 2
# define PRECISION 3

typedef struct	s_flags
{
	int		len;
	int		pad;
	char	c;
	int		precision;
}				t_flags;

int				ft_printf(const char *s, ...);
int				handle_args(va_list *ap, const char **s);
char			is_flag(char c);

#endif
