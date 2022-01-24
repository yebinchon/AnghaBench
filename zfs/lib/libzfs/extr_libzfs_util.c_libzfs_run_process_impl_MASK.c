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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int EPIPE ; 
 int NO_DEFAULT_PATH ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int STDERR_VERBOSE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int STDOUT_VERBOSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char**,char**) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char**,char**) ; 
 int FUNC9 (int,char***) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int*) ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(const char *path, char *argv[], char *env[], int flags,
    char **lines[], int *lines_cnt)
{
	pid_t pid;
	int error, devnull_fd;
	int link[2];

	/*
	 * Setup a pipe between our child and parent process if we're
	 * reading stdout.
	 */
	if ((lines != NULL) && FUNC11(link) == -1)
		return (-EPIPE);

	pid = FUNC12();
	if (pid == 0) {
		/* Child process */
		devnull_fd = FUNC10("/dev/null", O_WRONLY);

		if (devnull_fd < 0)
			FUNC2(-1);

		if (!(flags & STDOUT_VERBOSE) && (lines == NULL))
			(void) FUNC4(devnull_fd, STDOUT_FILENO);
		else if (lines != NULL) {
			/* Save the output to lines[] */
			FUNC4(link[1], STDOUT_FILENO);
			FUNC3(link[0]);
			FUNC3(link[1]);
		}

		if (!(flags & STDERR_VERBOSE))
			(void) FUNC4(devnull_fd, STDERR_FILENO);

		FUNC3(devnull_fd);

		if (flags & NO_DEFAULT_PATH) {
			if (env == NULL)
				FUNC5(path, argv);
			else
				FUNC6(path, argv, env);
		} else {
			if (env == NULL)
				FUNC7(path, argv);
			else
				FUNC8(path, argv, env);
		}

		FUNC2(-1);
	} else if (pid > 0) {
		/* Parent process */
		int status;

		while ((error = FUNC13(pid, &status, 0)) == -1 &&
		    errno == EINTR) { }
		if (error < 0 || !FUNC1(status))
			return (-1);

		if (lines != NULL) {
			FUNC3(link[1]);
			*lines_cnt = FUNC9(link[0], lines);
		}
		return (FUNC0(status));
	}

	return (-1);
}