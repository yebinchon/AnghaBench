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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC2 (char*) ; 

void
FUNC3(int *argc, char ***argv, char *arg)
{
	char	**new_argv;
	int	  i;

	new_argv = FUNC1(NULL, (*argc) + 1, sizeof *new_argv);
	new_argv[0] = FUNC2(arg);
	for (i = 0; i < *argc; i++)
		new_argv[1 + i] = (*argv)[i];

	FUNC0(*argv);
	*argv = new_argv;
	(*argc)++;
}