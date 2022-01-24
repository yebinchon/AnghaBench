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
struct view {int /*<<< orphan*/  watch; int /*<<< orphan*/  env; } ;
struct TYPE_3__ {scalar_t__ internal; scalar_t__ exit; scalar_t__ confirm; int /*<<< orphan*/  quick; int /*<<< orphan*/  echo; int /*<<< orphan*/  silent; } ;
struct run_request {TYPE_1__ flags; int /*<<< orphan*/  argv; } ;
typedef  enum request { ____Placeholder_request } request ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  cdup; } ;

/* Variables and functions */
 int REQ_NONE ; 
 int REQ_QUIT ; 
 int REQ_REFRESH ; 
 int SIZEOF_ARG ; 
 int SIZEOF_MED_STR ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const***,char const**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 scalar_t__ FUNC4 (char const**,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_2__ repo ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct view*,char const**) ; 
 scalar_t__ FUNC10 (char*,char*,char*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

enum request
FUNC12(struct view *view, struct run_request *req)
{
	const char **argv = NULL;
	bool confirmed = false;
	enum request request = REQ_NONE;
	char cmd[SIZEOF_MED_STR];
	const char *req_argv[SIZEOF_ARG];
	int req_argc = 0;

	if (!FUNC3(req->argv, cmd, sizeof(cmd), " ")
	    || !FUNC2(req_argv, &req_argc, cmd)
	    || !FUNC0(view->env, &argv, req_argv, false, true)
	    || !argv) {
		FUNC8("Failed to format arguments");
		return REQ_NONE;
	}

	if (req->flags.internal) {
		request = FUNC9(view, argv);

	} else {
		confirmed = !req->flags.confirm;

		if (req->flags.confirm) {
			char cmd[SIZEOF_STR], prompt[SIZEOF_STR];
			const char *and_exit = req->flags.exit ? " and exit" : "";

			if (FUNC4(argv, cmd, sizeof(cmd), " ") &&
			    FUNC10(prompt, "Run `%s`%s?", cmd, and_exit) &&
			    FUNC7(prompt)) {
				confirmed = true;
			}
		}

		if (confirmed)
			FUNC6(argv, repo.cdup, req->flags.silent,
					     !req->flags.exit, req->flags.echo, req->flags.quick, false, "");
	}

	if (argv)
		FUNC1(argv);
	FUNC5(argv);

	if (request == REQ_NONE) {
		if (req->flags.confirm && !confirmed)
			request = REQ_NONE;

		else if (req->flags.exit)
			request = REQ_QUIT;

		else if (!req->flags.internal && FUNC11(&view->watch))
			request = REQ_REFRESH;

	}

	return request;
}