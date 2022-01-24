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
struct sway_view {char* title_format; } ;
struct sway_container {struct sway_view* view; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char**,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_view*,int) ; 

struct cmd_results *FUNC6(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "title_format", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	struct sway_container *container = config->handler_context.container;
	if (!container || !container->view) {
		return FUNC1(CMD_INVALID,
				"Only views can have a title_format");
	}
	struct sway_view *view = container->view;
	char *format = FUNC4(argv, argc);
	if (view->title_format) {
		FUNC3(view->title_format);
	}
	view->title_format = format;
	FUNC5(view, true);
	FUNC2(true);
	return FUNC1(CMD_SUCCESS, NULL);
}