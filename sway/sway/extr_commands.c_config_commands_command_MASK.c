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
struct command_policy {char* command; int context; } ;
struct cmd_results {int dummy; } ;
struct cmd_handler {int dummy; } ;
typedef  enum command_context { ____Placeholder_command_context } command_context ;
typedef  int /*<<< orphan*/  context_names ;
struct TYPE_4__ {TYPE_1__* command_policies; } ;
struct TYPE_3__ {int length; struct command_policy** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BLOCK_END ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  CONTEXT_ALL ; 
 int /*<<< orphan*/  CONTEXT_BINDING ; 
 int /*<<< orphan*/  CONTEXT_CONFIG ; 
 int /*<<< orphan*/  CONTEXT_CRITERIA ; 
 int /*<<< orphan*/  CONTEXT_IPC ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 struct command_policy* FUNC0 (char*) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 struct cmd_handler* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct command_policy*) ; 
 char** FUNC5 (char*,int*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct command_policy*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int) ; 

struct cmd_results *FUNC9(char *exec) {
	struct cmd_results *results = NULL;
	int argc;
	char **argv = FUNC5(exec, &argc);
	if (!argc) {
		results = FUNC1(CMD_SUCCESS, NULL);
		goto cleanup;
	}

	// Find handler for the command this is setting a policy for
	char *cmd = argv[0];

	if (FUNC6(cmd, "}") == 0) {
		results = FUNC1(CMD_BLOCK_END, NULL);
		goto cleanup;
	}

	struct cmd_handler *handler = FUNC2(cmd, NULL, 0);
	if (!handler && FUNC6(cmd, "*") != 0) {
		results = FUNC1(CMD_INVALID,
			"Unknown/invalid command '%s'", cmd);
		goto cleanup;
	}

	enum command_context context = 0;

	struct {
		char *name;
		enum command_context context;
	} context_names[] = {
		{ "config", CONTEXT_CONFIG },
		{ "binding", CONTEXT_BINDING },
		{ "ipc", CONTEXT_IPC },
		{ "criteria", CONTEXT_CRITERIA },
		{ "all", CONTEXT_ALL },
	};

	for (int i = 1; i < argc; ++i) {
		size_t j;
		for (j = 0; j < sizeof(context_names) / sizeof(context_names[0]); ++j) {
			if (FUNC6(context_names[j].name, argv[i]) == 0) {
				break;
			}
		}
		if (j == sizeof(context_names) / sizeof(context_names[0])) {
			results = FUNC1(CMD_INVALID,
					"Invalid command context %s", argv[i]);
			goto cleanup;
		}
		context |= context_names[j].context;
	}

	struct command_policy *policy = NULL;
	for (int i = 0; i < config->command_policies->length; ++i) {
		struct command_policy *p = config->command_policies->items[i];
		if (FUNC6(p->command, cmd) == 0) {
			policy = p;
			break;
		}
	}
	if (!policy) {
		policy = FUNC0(cmd);
		if (!FUNC7(policy, "Unable to allocate security policy")) {
			results = FUNC1(CMD_INVALID,
					"Unable to allocate memory");
			goto cleanup;
		}
		FUNC4(config->command_policies, policy);
	}
	policy->context = context;

	FUNC8(SWAY_INFO, "Set command policy for %s to %d",
			policy->command, policy->context);

	results = FUNC1(CMD_SUCCESS, NULL);

cleanup:
	FUNC3(argc, argv);
	return results;
}