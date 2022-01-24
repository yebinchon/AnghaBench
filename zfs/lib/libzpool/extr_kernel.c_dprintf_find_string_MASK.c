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
 char* dprintf_string ; 
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

int
FUNC3(const char *string)
{
	char *tmp_str = dprintf_string;
	int len = FUNC1(string);

	/*
	 * Find out if this is a string we want to print.
	 * String format: file1.c,function_name1,file2.c,file3.c
	 */

	while (tmp_str != NULL) {
		if (FUNC2(tmp_str, string, len) == 0 &&
		    (tmp_str[len] == ',' || tmp_str[len] == '\0'))
			return (1);
		tmp_str = FUNC0(tmp_str, ',');
		if (tmp_str != NULL)
			tmp_str++; /* Get rid of , */
	}
	return (0);
}