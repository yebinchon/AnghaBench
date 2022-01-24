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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(int argc, char **argv)
{
	char	*buf;
	int	 i;
	size_t	 len;

	if (argc == 0)
		return (FUNC3(""));

	len = 0;
	buf = NULL;

	for (i = 0; i < argc; i++) {
		len += FUNC1(argv[i]) + 1;
		buf = FUNC2(buf, len);

		if (i == 0)
			*buf = '\0';
		else
			FUNC0(buf, " ", len);
		FUNC0(buf, argv[i], len);
	}
	return (buf);
}