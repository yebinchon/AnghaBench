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
struct io {int pid; int pipe; void* error; } ;
typedef  enum io_type { ____Placeholder_io_type } io_type ;

/* Variables and functions */
 int IO_AP ; 
 int IO_FG ; 
 int IO_RD ; 
 int IO_RD_FORWARD_STDIN ; 
 int IO_RD_WITH_STDERR ; 
 int IO_RP ; 
 int IO_WR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 void* errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char* const*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct io*) ; 
 int FUNC8 (struct io*,char*,char const*,char const*) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char const**) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (char* const) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*) ; 

bool
FUNC14(struct io *io, enum io_type type, const char *dir, char * const env[], const char *argv[], int custom)
{
	int pipefds[2] = { -1, -1 };
	bool read_from_stdin = type == IO_RD && (custom & IO_RD_FORWARD_STDIN);
	bool read_with_stderr = type == IO_RD && (custom & IO_RD_WITH_STDERR);

	FUNC7(io);

	if (dir && !FUNC13(dir, argv[0]))
		return FUNC8(io, "%s%s", dir, argv[1]);

	if ((type == IO_RD || type == IO_RP || type == IO_WR) && FUNC11(pipefds) < 0) {
		io->error = errno;
		return false;
	} else if (type == IO_AP) {
		pipefds[1] = custom;
	}

	if ((io->pid = FUNC6())) {
		if (io->pid == -1)
			io->error = errno;
		if (pipefds[!(type == IO_WR)] != -1)
			FUNC2(pipefds[!(type == IO_WR)]);
		if (io->pid != -1) {
			io->pipe = pipefds[!!(type == IO_WR)];
			return true;
		}

	} else {
		if (type != IO_FG) {
			int devnull = FUNC9("/dev/null", O_RDWR);
			int readfd  = type == IO_WR ? pipefds[0]
				    : type == IO_RP ? custom
				    : devnull;
			int writefd = (type == IO_RD || type == IO_RP || type == IO_AP)
				    ? pipefds[1] : devnull;
			int errorfd = FUNC10(devnull, argv);

			/* Inject stdin given on the command line. */
			if (read_from_stdin)
				readfd = FUNC3(STDIN_FILENO);

			FUNC4(readfd,  STDIN_FILENO);
			FUNC4(writefd, STDOUT_FILENO);
			if (read_with_stderr)
				FUNC4(writefd, STDERR_FILENO);
			else
				FUNC4(errorfd, STDERR_FILENO);

			if (devnull != errorfd)
				FUNC2(errorfd);
			FUNC2(devnull);
			if (pipefds[0] != -1)
				FUNC2(pipefds[0]);
			if (pipefds[1] != -1)
				FUNC2(pipefds[1]);
		}

		if (dir && *dir && FUNC1(dir) == -1)
			FUNC0(errno);

		if (env) {
			int i;

			for (i = 0; env[i]; i++)
				if (*env[i])
					FUNC12(env[i]);
		}

		FUNC5(argv[0], (char *const*) argv);

		FUNC2(STDOUT_FILENO);
		FUNC0(errno);
	}

	if (pipefds[!!(type == IO_WR)] != -1)
		FUNC2(pipefds[!!(type == IO_WR)]);
	return false;
}