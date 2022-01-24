#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct sway_view {TYPE_2__* container; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int dummy; } ;
struct sway_container {struct sway_node node; } ;
struct criteria {int /*<<< orphan*/  raw; } ;
struct cmd_results {scalar_t__ status; } ;
struct cmd_handler {struct cmd_results* (* handle ) (int,char**) ;} ;
struct TYPE_14__ {scalar_t__ length; struct sway_view** items; } ;
typedef  TYPE_3__ list_t ;
struct TYPE_15__ {int /*<<< orphan*/  node; } ;
struct TYPE_13__ {struct sway_node node; } ;
struct TYPE_12__ {int using_criteria; struct sway_seat* seat; } ;
struct TYPE_11__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 scalar_t__ CMD_FAILURE ; 
 scalar_t__ CMD_INVALID ; 
 scalar_t__ CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 char* FUNC0 (char**,char*,char*) ; 
 struct cmd_results* FUNC1 (scalar_t__,char*,...) ; 
 struct cmd_results* FUNC2 (int,char**) ; 
 TYPE_10__* config ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct criteria*) ; 
 TYPE_3__* FUNC5 (struct criteria*) ; 
 struct criteria* FUNC6 (char*,char**) ; 
 char* FUNC7 (char*) ; 
 struct cmd_handler* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char**) ; 
 int /*<<< orphan*/  FUNC11 (struct cmd_results*) ; 
 struct sway_seat* FUNC12 () ; 
 scalar_t__ FUNC13 (char) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,struct cmd_results*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 TYPE_4__* root ; 
 struct sway_node* FUNC16 (struct sway_seat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sway_node*) ; 
 char** FUNC18 (char*,int*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 char* FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct cmd_results* FUNC23 (int,char**) ; 
 struct cmd_results* FUNC24 (int,char**) ; 
 int /*<<< orphan*/  FUNC25 (struct sway_seat*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,...) ; 

list_t *FUNC27(char *_exec, struct sway_seat *seat,
		struct sway_container *con) {
	char *cmd;
	char matched_delim = ';';
	list_t *views = NULL;

	if (seat == NULL) {
		// passing a NULL seat means we just pick the default seat
		seat = FUNC12();
		if (!FUNC25(seat, "could not find a seat to run the command on")) {
			return NULL;
		}
	}

	char *exec = FUNC20(_exec);
	char *head = exec;
	list_t *res_list = FUNC3();

	if (!res_list || !exec) {
		return NULL;
	}

	config->handler_context.seat = seat;

	do {
		for (; FUNC13(*head); ++head) {}
		// Extract criteria (valid for this command list only).
		if (matched_delim == ';') {
			config->handler_context.using_criteria = false;
			if (*head == '[') {
				char *error = NULL;
				struct criteria *criteria = FUNC6(head, &error);
				if (!criteria) {
					FUNC14(res_list,
							FUNC1(CMD_INVALID, "%s", error));
					FUNC9(error);
					goto cleanup;
				}
				FUNC15(views);
				views = FUNC5(criteria);
				head += FUNC22(criteria->raw);
				FUNC4(criteria);
				config->handler_context.using_criteria = true;
				// Skip leading whitespace
				for (; FUNC13(*head); ++head) {}
			}
		}
		// Split command list
		cmd = FUNC0(&head, ";,", &matched_delim);
		for (; FUNC13(*cmd); ++cmd) {}

		if (FUNC19(cmd, "") == 0) {
			FUNC26(SWAY_INFO, "Ignoring empty command.");
			continue;
		}
		FUNC26(SWAY_INFO, "Handling command '%s'", cmd);
		//TODO better handling of argv
		int argc;
		char **argv = FUNC18(cmd, &argc);
		if (FUNC19(argv[0], "exec") != 0 &&
				FUNC19(argv[0], "exec_always") != 0 &&
				FUNC19(argv[0], "mode") != 0) {
			for (int i = 1; i < argc; ++i) {
				if (*argv[i] == '\"' || *argv[i] == '\'') {
					FUNC21(argv[i]);
				}
			}
		}
		struct cmd_handler *handler = FUNC8(argv[0]);
		if (!handler) {
			FUNC14(res_list, FUNC1(CMD_INVALID,
					"Unknown/invalid command '%s'", argv[0]));
			FUNC10(argc, argv);
			goto cleanup;
		}

		// Var replacement, for all but first argument of set
		for (int i = handler->handle == cmd_set ? 2 : 1; i < argc; ++i) {
			argv[i] = FUNC7(argv[i]);
		}

		if (!config->handler_context.using_criteria) {
			// The container or workspace which this command will run on.
			struct sway_node *node = con ? &con->node :
					FUNC16(seat, &root->node);
			FUNC17(node);
			struct cmd_results *res = handler->handle(argc-1, argv+1);
			FUNC14(res_list, res);
			if (res->status == CMD_INVALID) {
				FUNC10(argc, argv);
				goto cleanup;
			}
		} else if (views->length == 0) {
			FUNC14(res_list,
					FUNC1(CMD_FAILURE, "No matching node."));
		} else {
			struct cmd_results *fail_res = NULL;
			for (int i = 0; i < views->length; ++i) {
				struct sway_view *view = views->items[i];
				FUNC17(&view->container->node);
				struct cmd_results *res = handler->handle(argc-1, argv+1);
				if (res->status == CMD_SUCCESS) {
					FUNC11(res);
				} else {
					// last failure will take precedence
					if (fail_res) {
						FUNC11(fail_res);
					}
					fail_res = res;
					if (res->status == CMD_INVALID) {
						FUNC14(res_list, fail_res);
						FUNC10(argc, argv);
						goto cleanup;
					}
				}
			}
			FUNC14(res_list,
					fail_res ? fail_res : FUNC1(CMD_SUCCESS, NULL));
		}
		FUNC10(argc, argv);
	} while(head);
cleanup:
	FUNC9(exec);
	FUNC15(views);
	return res_list;
}