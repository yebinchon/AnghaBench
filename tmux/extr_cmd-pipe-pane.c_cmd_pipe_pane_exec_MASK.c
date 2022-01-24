#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct winlink {int dummy; } ;
struct window_pane {int pipe_fd; int fd; int /*<<< orphan*/ * pipe_event; int /*<<< orphan*/  pipe_off; TYPE_2__* event; } ;
struct session {int dummy; } ;
struct format_tree {int dummy; } ;
struct TYPE_3__ {struct winlink* wl; struct session* s; struct window_pane* wp; } ;
struct cmdq_item {int /*<<< orphan*/  client; TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {scalar_t__ argc; char** argv; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FORMAT_NONE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct args*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct client* FUNC8 (struct cmdq_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cmd_pipe_pane_error_callback ; 
 int /*<<< orphan*/  cmd_pipe_pane_read_callback ; 
 int /*<<< orphan*/  cmd_pipe_pane_write_callback ; 
 int /*<<< orphan*/  FUNC9 (struct cmdq_item*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 () ; 
 struct format_tree* FUNC14 (int /*<<< orphan*/ ,struct cmdq_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct format_tree*,struct client*,struct session*,struct winlink*,struct window_pane*) ; 
 char* FUNC16 (struct format_tree*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct window_pane*,int) ; 
 int /*<<< orphan*/  server_proc ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct window_pane*) ; 

__attribute__((used)) static enum cmd_retval
FUNC28(struct cmd *self, struct cmdq_item *item)
{
	struct args		*args = self->args;
	struct client		*c = FUNC8(item, NULL, 1);
	struct window_pane	*wp = item->target.wp;
	struct session		*s = item->target.s;
	struct winlink		*wl = item->target.wl;
	char			*cmd;
	int			 old_fd, pipe_fd[2], null_fd, in, out;
	struct format_tree	*ft;
	sigset_t		 set, oldset;

	/* Destroy the old pipe. */
	old_fd = wp->pipe_fd;
	if (wp->pipe_fd != -1) {
		FUNC4(wp->pipe_event);
		FUNC6(wp->pipe_fd);
		wp->pipe_fd = -1;

		if (FUNC27(wp)) {
			FUNC21(wp, 1);
			return (CMD_RETURN_NORMAL);
		}
	}

	/* If no pipe command, that is enough. */
	if (args->argc == 0 || *args->argv[0] == '\0')
		return (CMD_RETURN_NORMAL);

	/*
	 * With -o, only open the new pipe if there was no previous one. This
	 * allows a pipe to be toggled with a single key, for example:
	 *
	 *	bind ^p pipep -o 'cat >>~/output'
	 */
	if (FUNC2(self->args, 'o') && old_fd != -1)
		return (CMD_RETURN_NORMAL);

	/* What do we want to do? Neither -I or -O is -O. */
	if (FUNC2(self->args, 'I')) {
		in = 1;
		out = FUNC2(self->args, 'O');
	} else {
		in = 0;
		out = 1;
	}

	/* Open the new pipe. */
	if (FUNC25(AF_UNIX, SOCK_STREAM, PF_UNSPEC, pipe_fd) != 0) {
		FUNC9(item, "socketpair error: %s", FUNC26(errno));
		return (CMD_RETURN_ERROR);
	}

	/* Expand the command. */
	ft = FUNC14(item->client, item, FORMAT_NONE, 0);
	FUNC15(ft, c, s, wl, wp);
	cmd = FUNC16(ft, args->argv[0]);
	FUNC17(ft);

	/* Fork the child. */
	FUNC23(&set);
	FUNC24(SIG_BLOCK, &set, &oldset);
	switch (FUNC13()) {
	case -1:
		FUNC24(SIG_SETMASK, &oldset, NULL);
		FUNC9(item, "fork error: %s", FUNC26(errno));

		FUNC18(cmd);
		return (CMD_RETURN_ERROR);
	case 0:
		/* Child process. */
		FUNC20(server_proc, 1);
		FUNC24(SIG_SETMASK, &oldset, NULL);
		FUNC6(pipe_fd[0]);

		null_fd = FUNC19(_PATH_DEVNULL, O_WRONLY, 0);
		if (out) {
			if (FUNC10(pipe_fd[1], STDIN_FILENO) == -1)
				FUNC1(1);
		} else {
			if (FUNC10(null_fd, STDIN_FILENO) == -1)
				FUNC1(1);
		}
		if (in) {
			if (FUNC10(pipe_fd[1], STDOUT_FILENO) == -1)
				FUNC1(1);
			if (pipe_fd[1] != STDOUT_FILENO)
				FUNC6(pipe_fd[1]);
		} else {
			if (FUNC10(null_fd, STDOUT_FILENO) == -1)
				FUNC1(1);
		}
		if (FUNC10(null_fd, STDERR_FILENO) == -1)
			FUNC1(1);
		FUNC7(STDERR_FILENO + 1);

		FUNC11(_PATH_BSHELL, "sh", "-c", cmd, (char *) NULL);
		FUNC1(1);
	default:
		/* Parent process. */
		FUNC24(SIG_SETMASK, &oldset, NULL);
		FUNC6(pipe_fd[1]);

		wp->pipe_fd = pipe_fd[0];
		if (wp->fd != -1)
			wp->pipe_off = FUNC0(wp->event->input);
		else
			wp->pipe_off = 0;

		FUNC22(wp->pipe_fd, 0);
		wp->pipe_event = FUNC5(wp->pipe_fd,
		    cmd_pipe_pane_read_callback,
		    cmd_pipe_pane_write_callback,
		    cmd_pipe_pane_error_callback,
		    wp);
		if (wp->pipe_event == NULL)
			FUNC12("out of memory");
		if (out)
			FUNC3(wp->pipe_event, EV_WRITE);
		if (in)
			FUNC3(wp->pipe_event, EV_READ);

		FUNC18(cmd);
		return (CMD_RETURN_NORMAL);
	}
}