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
typedef  scalar_t__ zfs_keyformat_t ;
typedef  char uint8_t ;
struct termios {int c_lflag; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ECHO ; 
 int ECHOE ; 
 int ECHOK ; 
 int ECHONL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int WRAPPING_KEY_LEN ; 
 scalar_t__ ZFS_KEYFORMAT_RAW ; 
 int /*<<< orphan*/  catch_signal ; 
 scalar_t__ caught_interrupt ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static int
FUNC15(FILE *fd, const char *fsname, zfs_keyformat_t keyformat,
    boolean_t again, boolean_t newkey, uint8_t **buf, size_t *len_out)
{
	int ret = 0, bytes;
	size_t buflen = 0;
	struct termios old_term, new_term;
	struct sigaction act, osigint, osigtstp;

	*len_out = 0;

	if (FUNC7(FUNC1(fd))) {
		/*
		 * handle SIGINT and ignore SIGSTP. This is necessary to
		 * restore the state of the terminal.
		 */
		caught_interrupt = 0;
		act.sa_flags = 0;
		(void) FUNC12(&act.sa_mask);
		act.sa_handler = catch_signal;

		(void) FUNC11(SIGINT, &act, &osigint);
		act.sa_handler = SIG_IGN;
		(void) FUNC11(SIGTSTP, &act, &osigtstp);

		/* prompt for the key */
		if (fsname != NULL) {
			(void) FUNC10("%s %s%s for '%s': ",
			    (again) ? "Re-enter" : "Enter",
			    (newkey) ? "new " : "",
			    FUNC4(keyformat), fsname);
		} else {
			(void) FUNC10("%s %s%s: ",
			    (again) ? "Re-enter" : "Enter",
			    (newkey) ? "new " : "",
			    FUNC4(keyformat));

		}
		(void) FUNC0(stdout);

		/* disable the terminal echo for key input */
		(void) FUNC13(FUNC1(fd), &old_term);

		new_term = old_term;
		new_term.c_lflag &= ~(ECHO | ECHOE | ECHOK | ECHONL);

		ret = FUNC14(FUNC1(fd), TCSAFLUSH, &new_term);
		if (ret != 0) {
			ret = errno;
			errno = 0;
			goto out;
		}
	}

	/* read the key material */
	if (keyformat != ZFS_KEYFORMAT_RAW) {
		bytes = FUNC5((char **)buf, &buflen, fd);
		if (bytes < 0) {
			ret = errno;
			errno = 0;
			goto out;
		}

		/* trim the ending newline if it exists */
		if ((*buf)[bytes - 1] == '\n') {
			(*buf)[bytes - 1] = '\0';
			bytes--;
		}
	} else {
		/*
		 * Raw keys may have newline characters in them and so can't
		 * use getline(). Here we attempt to read 33 bytes so that we
		 * can properly check the key length (the file should only have
		 * 32 bytes).
		 */
		*buf = FUNC9((WRAPPING_KEY_LEN + 1) * sizeof (char));
		if (*buf == NULL) {
			ret = ENOMEM;
			goto out;
		}

		bytes = FUNC2(*buf, 1, WRAPPING_KEY_LEN + 1, fd);
		if (bytes < 0) {
			/* size errors are handled by the calling function */
			FUNC3(*buf);
			*buf = NULL;
			ret = errno;
			errno = 0;
			goto out;
		}
	}

	*len_out = bytes;

out:
	if (FUNC7(FUNC1(fd))) {
		/* reset the terminal */
		(void) FUNC14(FUNC1(fd), TCSAFLUSH, &old_term);
		(void) FUNC11(SIGINT, &osigint, NULL);
		(void) FUNC11(SIGTSTP, &osigtstp, NULL);

		/* if we caught a signal, re-throw it now */
		if (caught_interrupt != 0) {
			(void) FUNC8(FUNC6(), caught_interrupt);
		}

		/* print the newline that was not echo'd */
		FUNC10("\n");
	}

	return (ret);

}