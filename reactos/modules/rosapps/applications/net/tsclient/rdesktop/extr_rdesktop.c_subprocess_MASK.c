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
typedef  int /*<<< orphan*/  str_handle_lines_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char* const,char* const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int*) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

BOOL
FUNC10(RDPCLIENT * This, char *const argv[], str_handle_lines_t linehandler, void *data)
{
	pid_t child;
	int fd[2];
	int n = 1;
	char output[256];
	char *rest = NULL;

	if (FUNC6(fd) < 0)
	{
		FUNC5("pipe");
		return False;
	}

	if ((child = FUNC4()) < 0)
	{
		FUNC5("fork");
		return False;
	}

	/* Child */
	if (child == 0)
	{
		/* Close read end */
		FUNC1(fd[0]);

		/* Redirect stdout and stderr to pipe */
		FUNC2(fd[1], 1);
		FUNC2(fd[1], 2);

		/* Execute */
		FUNC3(argv[0], argv);
		FUNC5("Error executing child");
		FUNC0(128);
	}

	/* Parent. Close write end. */
	FUNC1(fd[1]);
	while (n > 0)
	{
		n = FUNC7(fd[0], output, 255);
		output[n] = '\0';
		FUNC8(This, output, &rest, linehandler, data);
	}
	FUNC9(rest);

	return True;
}