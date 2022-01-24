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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char*) ; 

char *
FUNC6(char *path)
{
	char *tmp = FUNC2(path);
	char *part = NULL, *d = NULL;
	if (!tmp)
		return (NULL);

	if ((part = FUNC5(tmp, "-part")) && part != tmp) {
		d = part + 5;
	} else if ((part = FUNC4(tmp, 'p')) &&
	    part > tmp + 1 && FUNC1(*(part-1))) {
		d = part + 1;
	} else if ((tmp[0] == 'h' || tmp[0] == 's' || tmp[0] == 'v') &&
	    tmp[1] == 'd') {
		for (d = &tmp[2]; FUNC0(*d); part = ++d) { }
	} else if (FUNC3("xvd", tmp, 3) == 0) {
		for (d = &tmp[3]; FUNC0(*d); part = ++d) { }
	}
	if (part && d && *d != '\0') {
		for (; FUNC1(*d); d++) { }
		if (*d == '\0')
			*part = '\0';
	}

	return (tmp);
}