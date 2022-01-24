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
struct termios {int /*<<< orphan*/  c_lflag; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ECHO ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static BOOL
FUNC5(char *password, int size)
{
	struct termios tios;
	BOOL ret = False;
	int istty = 0;
	char *p;

	if (FUNC3(STDIN_FILENO, &tios) == 0)
	{
		FUNC1(stderr, "Password: ");
		tios.c_lflag &= ~ECHO;
		FUNC4(STDIN_FILENO, TCSANOW, &tios);
		istty = 1;
	}

	if (FUNC0(password, size, stdin) != NULL)
	{
		ret = True;

		/* strip final newline */
		p = FUNC2(password, '\n');
		if (p != NULL)
			*p = 0;
	}

	if (istty)
	{
		tios.c_lflag |= ECHO;
		FUNC4(STDIN_FILENO, TCSANOW, &tios);
		FUNC1(stderr, "\n");
	}

	return ret;
}