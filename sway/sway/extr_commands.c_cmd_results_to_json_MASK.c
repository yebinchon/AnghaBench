#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {scalar_t__ status; scalar_t__ error; } ;
struct TYPE_3__ {int length; struct cmd_results** items; } ;
typedef  TYPE_1__ list_t ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 scalar_t__ CMD_INVALID ; 
 scalar_t__ CMD_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 

char *FUNC9(list_t *res_list) {
	json_object *result_array = FUNC1();
	for (int i = 0; i < res_list->length; ++i) {
		struct cmd_results *results = res_list->items[i];
		json_object *root = FUNC3();
		FUNC5(root, "success",
				FUNC2(results->status == CMD_SUCCESS));
		if (results->error) {
			FUNC5(root, "parse_error",
					FUNC2(results->status == CMD_INVALID));
			FUNC5(
					root, "error", FUNC4(results->error));
		}
		FUNC0(result_array, root);
	}
	const char *json = FUNC7(result_array);
	char *res = FUNC8(json);
	FUNC6(result_array);
	return res;
}