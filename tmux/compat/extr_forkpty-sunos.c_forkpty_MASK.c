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
typedef  char winsize ;
struct termios {int dummy; } ;
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  I_PUSH ; 
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TIOCSCTTY ; 
 int /*<<< orphan*/  TIOCSWINSZ ; 
 int /*<<< orphan*/  TTY_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*,int) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,struct termios*) ; 
 scalar_t__ FUNC11 (int) ; 

pid_t
FUNC12(int *master, char *name, struct termios *tio, struct winsize *ws)
{
	int	slave = -1;
	char   *path;
	pid_t	pid;

	if ((*master = FUNC6("/dev/ptmx", O_RDWR|O_NOCTTY)) == -1)
		return (-1);
	if (FUNC4(*master) != 0)
		goto out;
	if (FUNC11(*master) != 0)
		goto out;

	if ((path = FUNC7(*master)) == NULL)
		goto out;
	if (name != NULL)
		FUNC9(name, path, TTY_NAME_MAX);
	if ((slave = FUNC6(path, O_RDWR|O_NOCTTY)) == -1)
		goto out;

	switch (pid = FUNC3()) {
	case -1:
		goto out;
	case 0:
		FUNC0(*master);

		FUNC8();
#ifdef TIOCSCTTY
		if (ioctl(slave, TIOCSCTTY, NULL) == -1)
			fatal("ioctl failed");
#endif

		if (FUNC5(slave, I_PUSH, "ptem") == -1)
			FUNC2("ioctl failed");
		if (FUNC5(slave, I_PUSH, "ldterm") == -1)
			FUNC2("ioctl failed");

		if (tio != NULL && FUNC10(slave, TCSAFLUSH, tio) == -1)
			FUNC2("tcsetattr failed");
		if (FUNC5(slave, TIOCSWINSZ, ws) == -1)
			FUNC2("ioctl failed");

		FUNC1(slave, 0);
		FUNC1(slave, 1);
		FUNC1(slave, 2);
		if (slave > 2)
			FUNC0(slave);
		return (0);
	}

	FUNC0(slave);
	return (pid);

out:
	if (*master != -1)
		FUNC0(*master);
	if (slave != -1)
		FUNC0(slave);
	return (-1);
}