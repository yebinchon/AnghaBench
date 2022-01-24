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
struct tmuxproc {int dummy; } ;
struct event_base {int dummy; } ;
struct client {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  CLIENT_EXIT ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_window_panes ; 
 int /*<<< orphan*/  clients ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct tmuxproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 struct client* FUNC22 (int) ; 
 int FUNC23 (char**) ; 
 int server_fd ; 
 int /*<<< orphan*/  server_loop ; 
 int /*<<< orphan*/  server_proc ; 
 int /*<<< orphan*/  server_signal ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  sessions ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  windows ; 

int
FUNC31(struct tmuxproc *client, struct event_base *base, int lockfd,
    char *lockfile)
{
	int		 pair[2];
	sigset_t	 set, oldset;
	struct client	*c;
	char		*cause = NULL;

	if (FUNC27(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pair) != 0)
		FUNC8("socketpair failed");

	FUNC25(&set);
	FUNC26(SIG_BLOCK, &set, &oldset);
	switch (FUNC10()) {
	case -1:
		FUNC8("fork failed");
	case 0:
		break;
	default:
		FUNC26(SIG_SETMASK, &oldset, NULL);
		FUNC2(pair[1]);
		return (pair[0]);
	}
	FUNC2(pair[0]);
	if (FUNC5(1, 0) != 0)
		FUNC8("daemon failed");
	FUNC17(client, 0);
	if (FUNC6(base) != 0)
		FUNC9("event_reinit failed");
	server_proc = FUNC20("server");
	FUNC19(server_proc, server_signal);
	FUNC26(SIG_SETMASK, &oldset, NULL);

	if (FUNC15() > 1)
		FUNC29();
	if (FUNC16("stdio rpath wpath cpath fattr unix getpw recvfd proc exec "
	    "tty ps", NULL) != 0)
		FUNC8("pledge failed");

	FUNC0(&windows);
	FUNC0(&all_window_panes);
	FUNC1(&clients);
	FUNC0(&sessions);
	FUNC14();

	FUNC12(&start_time, NULL);

	server_fd = FUNC23(&cause);
	if (server_fd != -1)
		FUNC24();
	c = FUNC22(pair[1]);

	if (lockfd >= 0) {
		FUNC30(lockfile);
		FUNC11(lockfile);
		FUNC2(lockfd);
	}

	if (cause != NULL) {
		FUNC3(c, FUNC4(cause));
		FUNC11(cause);
		c->flags |= CLIENT_EXIT;
	}

	FUNC21(0);
	FUNC18(server_proc, server_loop);

	FUNC13();
	FUNC28();

	FUNC7(0);
}