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
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ gIsTTYr ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC3 (char*) ; 

char *
FUNC4(char *prompt)
{
	char *linecopy, *line, *cp;
	char lbuf[256];

	if (gIsTTYr) {
		line = FUNC2(prompt);
	} else {
		line = FUNC1(lbuf, sizeof(lbuf) - 1, stdin);
		if (line != NULL) {
			cp = line + FUNC3(line) - 1;
			if (*cp == '\n')
				*cp = '\0';
		}
	}

	if (line != NULL) {
		if (line[0] == '\0')
			return NULL;	/* EOF */
		linecopy = FUNC0(line);
		line = linecopy;
	}
	return (line);
}