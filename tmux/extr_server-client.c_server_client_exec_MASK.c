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
struct session {int /*<<< orphan*/  options; } ;
struct client {int /*<<< orphan*/  peer; struct session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_EXEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  global_s_options ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,size_t) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (size_t) ; 

void
FUNC6(struct client *c, const char *cmd)
{
	struct session	*s = c->session;
	char		*msg;
	const char	*shell;
	size_t		 cmdsize, shellsize;

	if (*cmd == '\0')
		return;
	cmdsize = FUNC4(cmd) + 1;

	if (s != NULL)
		shell = FUNC2(s->options, "default-shell");
	else
		shell = FUNC2(global_s_options, "default-shell");
	shellsize = FUNC4(shell) + 1;

	msg = FUNC5(cmdsize + shellsize);
	FUNC1(msg, cmd, cmdsize);
	FUNC1(msg + cmdsize, shell, shellsize);

	FUNC3(c->peer, MSG_EXEC, -1, msg, cmdsize + shellsize);
	FUNC0(msg);
}