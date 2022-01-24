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
struct cmd_results {int dummy; } ;
struct cmd_handler {struct cmd_results* (* handle ) (int,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct cmd_handler* FUNC1 (char*,struct cmd_handler*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int) ; 
 struct cmd_results* FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

struct cmd_results *FUNC6(char **argv, int argc,
		struct cmd_handler *handlers, size_t handlers_size) {
	char *command = FUNC3(argv, argc);
	FUNC5(SWAY_DEBUG, "Subcommand: %s", command);
	FUNC2(command);

	struct cmd_handler *handler = FUNC1(argv[0], handlers,
			handlers_size);
	if (!handler) {
		return FUNC0(CMD_INVALID,
				"Unknown/invalid command '%s'", argv[0]);
	}
	if (handler->handle) {
		return handler->handle(argc - 1, argv + 1);
	}
	return FUNC0(CMD_INVALID,
			"The command '%s' is shimmed, but unimplemented", argv[0]);
}