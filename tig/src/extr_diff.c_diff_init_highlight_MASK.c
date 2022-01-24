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
struct io {int /*<<< orphan*/  pipe; } ;
struct view {struct io io; int /*<<< orphan*/  dir; } ;
struct diff_state {int highlight; struct io view_io; } ;
struct app_external {char** argv; int /*<<< orphan*/  env; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  IO_RP ; 
 int SUCCESS ; 
 struct app_external* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * opt_diff_highlight ; 

enum status_code
FUNC3(struct view *view, struct diff_state *state)
{
	if (!opt_diff_highlight || !*opt_diff_highlight)
		return SUCCESS;

	struct app_external *app = FUNC0(opt_diff_highlight);
	struct io io;

	/* XXX This empty string keeps valgrind happy while preserving earlier
	 * behavior of test diff/diff-highlight-test:diff-highlight-misconfigured.
	 * Simpler would be to return error when user misconfigured, though we
	 * don't want tig to fail when diff-highlight isn't present.  io_exec
	 * below does not return error when app->argv[0] is empty or null as the
	 * conditional might suggest. */
	if (!*app->argv)
		app->argv[0] = "";

	if (!FUNC2(&io, IO_RP, view->dir, app->env, app->argv, view->io.pipe))
		return FUNC1("Failed to run %s", opt_diff_highlight);

	state->view_io = view->io;
	view->io = io;
	state->highlight = true;

	return SUCCESS;
}