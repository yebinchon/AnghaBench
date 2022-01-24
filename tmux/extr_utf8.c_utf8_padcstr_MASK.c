#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5(const char *s, u_int width)
{
	size_t	 slen;
	char	*out;
	u_int	  n, i;

	n = FUNC2(s);
	if (n >= width)
		return (FUNC4(s));

	slen = FUNC1(s);
	out = FUNC3(slen + 1 + (width - n));
	FUNC0(out, s, slen);
	for (i = n; i < width; i++)
		out[slen++] = ' ';
	out[slen] = '\0';
	return (out);
}