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
struct window_pane {int /*<<< orphan*/ * shell; int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; int /*<<< orphan*/  tty; int /*<<< orphan*/  fd; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct format_tree *ft, struct format_entry *fe)
{
	struct window_pane	*wp = ft->wp;
	char			*cmd;

	if (wp == NULL || wp->shell == NULL)
		return;

	cmd = FUNC2(wp->fd, wp->tty);
	if (cmd == NULL || *cmd == '\0') {
		FUNC1(cmd);
		cmd = FUNC0(wp->argc, wp->argv);
		if (cmd == NULL || *cmd == '\0') {
			FUNC1(cmd);
			cmd = FUNC4(wp->shell);
		}
	}
	fe->value = FUNC3(cmd);
	FUNC1(cmd);
}