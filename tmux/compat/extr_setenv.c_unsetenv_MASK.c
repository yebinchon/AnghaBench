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
 char** environ ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

int
FUNC2(const char *name)
{
	char  **envptr;
	int	namelen;

	namelen = FUNC0(name);
	for (envptr = environ; *envptr != NULL; envptr++) {
		if (FUNC1(name, *envptr, namelen) == 0 &&
		    ((*envptr)[namelen] == '=' || (*envptr)[namelen] == '\0'))
			break;
	}
	for (; *envptr != NULL; envptr++)
		*envptr = *(envptr + 1);
	return (0);
}