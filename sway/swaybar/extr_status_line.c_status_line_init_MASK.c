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
struct status_line {int buffer_size; scalar_t__ pid; int read_fd; int write_fd; void* write; void* read; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cont_signal; int /*<<< orphan*/  stop_signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct status_line* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char* const,char* const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

struct status_line *FUNC11(char *cmd) {
	struct status_line *status = FUNC0(1, sizeof(struct status_line));
	status->stop_signal = SIGSTOP;
	status->cont_signal = SIGCONT;

	status->buffer_size = 8192;
	status->buffer = FUNC8(status->buffer_size);

	int pipe_read_fd[2];
	int pipe_write_fd[2];
	if (FUNC9(pipe_read_fd) != 0 || FUNC9(pipe_write_fd) != 0) {
		FUNC10(SWAY_ERROR, "Unable to create pipes for status_command fork");
		FUNC4(1);
	}

	status->pid = FUNC7();
	if (status->pid == 0) {
		FUNC2(pipe_read_fd[1], STDOUT_FILENO);
		FUNC1(pipe_read_fd[0]);
		FUNC1(pipe_read_fd[1]);

		FUNC2(pipe_write_fd[0], STDIN_FILENO);
		FUNC1(pipe_write_fd[0]);
		FUNC1(pipe_write_fd[1]);

		char *const _cmd[] = { "sh", "-c", cmd, NULL, };
		FUNC3(_cmd[0], _cmd);
		FUNC4(1);
	}

	FUNC1(pipe_read_fd[1]);
	status->read_fd = pipe_read_fd[0];
	FUNC5(status->read_fd, F_SETFL, O_NONBLOCK);
	FUNC1(pipe_write_fd[0]);
	status->write_fd = pipe_write_fd[1];
	FUNC5(status->write_fd, F_SETFL, O_NONBLOCK);

	status->read = FUNC6(status->read_fd, "r");
	status->write = FUNC6(status->write_fd, "w");
	return status;
}