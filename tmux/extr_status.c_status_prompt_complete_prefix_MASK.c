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
typedef  size_t u_int ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(char **list, u_int size)
{
	char	 *out;
	u_int	  i;
	size_t	  j;

	out = FUNC1(list[0]);
	for (i = 1; i < size; i++) {
		j = FUNC0(list[i]);
		if (j > FUNC0(out))
			j = FUNC0(out);
		for (; j > 0; j--) {
			if (out[j - 1] != list[i][j - 1])
				out[j - 1] = '\0';
		}
	}
	return (out);
}