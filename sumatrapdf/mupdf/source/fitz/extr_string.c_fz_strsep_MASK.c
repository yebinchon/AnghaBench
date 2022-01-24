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
 char* FUNC0 (char*,char const*) ; 

char *
FUNC1(char **stringp, const char *delim)
{
	char *ret = *stringp;
	if (!ret) return NULL;
	if ((*stringp = FUNC0(*stringp, delim)) != NULL)
		*((*stringp)++) = '\0';
	return ret;
}