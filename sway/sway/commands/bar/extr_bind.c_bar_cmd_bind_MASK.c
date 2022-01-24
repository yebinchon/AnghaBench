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
struct cmd_results {int dummy; } ;
struct bar_binding {int release; int /*<<< orphan*/  command; int /*<<< orphan*/  button; } ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (struct bar_binding*,int /*<<< orphan*/ *) ; 
 struct cmd_results* FUNC1 (struct bar_binding*,int /*<<< orphan*/ *) ; 
 struct bar_binding* FUNC2 (int,int) ; 
 struct cmd_results* FUNC3 (int,char const*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bar_binding*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**) ; 
 int /*<<< orphan*/  FUNC9 (char**,int) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static struct cmd_results *FUNC11(int argc, char **argv, bool code,
		bool unbind) {
	int minargs = 2;
	const char *command;
	if (unbind) {
		minargs--;
		command = code ? "bar unbindcode" : "bar unbindsym";
	} else {
		command = code ? "bar bindcode" : "bar bindsym";
	}

	struct cmd_results *error = NULL;
	if ((error = FUNC3(argc, command, EXPECTED_AT_LEAST, minargs))) {
		return error;
	}

	struct bar_binding *binding = FUNC2(1, sizeof(struct bar_binding));
	if (!binding) {
		return FUNC4(CMD_FAILURE, "Unable to allocate bar binding");
	}

	binding->release = false;
	if (FUNC10("--release", argv[0]) == 0) {
		binding->release = true;
		argv++;
		argc--;
	}

	char *message = NULL;
	if (code) {
		binding->button = FUNC7(argv[0], &message);
	} else {
		binding->button = FUNC8(argv[0], &message);
	}
	if (message) {
		FUNC6(binding);
		error = FUNC4(CMD_INVALID, message);
		FUNC5(message);
		return error;
	} else if (!binding->button) {
		FUNC6(binding);
		return FUNC4(CMD_INVALID, "Unknown button %s", argv[0]);
	}
	list_t *bindings = config->current_bar->bindings;
	if (unbind) {
		return FUNC1(binding, bindings);
	}

	binding->command = FUNC9(argv + 1, argc - 1);
	return FUNC0(binding, bindings);
}