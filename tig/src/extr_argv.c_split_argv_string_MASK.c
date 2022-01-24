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
 int SIZEOF_ARG ; 
 char* FUNC0 (char**,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static bool
FUNC2(const char *argv[SIZEOF_ARG], int *argc, char *cmd, bool remove_quotes)
{
	while (*cmd && *argc < SIZEOF_ARG) {
		char *arg = FUNC0(&cmd, remove_quotes);

		if (!arg)
			break;
		argv[(*argc)++] = arg;
		cmd = FUNC1(cmd);
	}

	if (*argc < SIZEOF_ARG)
		argv[*argc] = NULL;
	return *argc < SIZEOF_ARG;
}