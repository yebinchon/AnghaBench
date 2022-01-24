#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_7__ {TYPE_2__* seat_config; } ;
struct TYPE_8__ {TYPE_3__ handler_context; } ;
struct TYPE_5__ {unsigned int size; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ xcursor_theme; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  EXPECTED_AT_MOST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 unsigned int FUNC4 (char*,char**,int) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "xcursor_theme", EXPECTED_AT_LEAST, 1)) ||
		(error = FUNC0(argc, "xcursor_theme", EXPECTED_AT_MOST, 2))) {
		return error;
	}
	if (!config->handler_context.seat_config) {
		return FUNC1(CMD_FAILURE, "No seat defined");
	}

	const char *theme_name = argv[0];
	unsigned size = 24;

	if (argc == 2) {
		char *end;
		size = FUNC4(argv[1], &end, 10);
		if (*end) {
			return FUNC1(
				CMD_INVALID, "Expected a positive integer size");
		}
	}

	FUNC2(config->handler_context.seat_config->xcursor_theme.name);
	config->handler_context.seat_config->xcursor_theme.name = FUNC3(theme_name);
	config->handler_context.seat_config->xcursor_theme.size = size;

	return FUNC1(CMD_SUCCESS, NULL);
}