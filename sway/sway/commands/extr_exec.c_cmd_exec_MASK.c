#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ reloading; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEFER ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int,char**) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	if (!config->active) return FUNC1(CMD_DEFER, NULL);
	if (config->reloading) {
		char *args = FUNC3(argv, argc);
		FUNC4(SWAY_DEBUG, "Ignoring 'exec %s' due to reload", args);
		FUNC2(args);
		return FUNC1(CMD_SUCCESS, NULL);
	}
	return FUNC0(argc, argv);
}