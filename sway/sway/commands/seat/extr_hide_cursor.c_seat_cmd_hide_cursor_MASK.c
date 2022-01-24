#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct TYPE_5__ {TYPE_1__* seat_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; } ;
struct TYPE_4__ {int hide_cursor_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int FUNC2 (char*,char**,int) ; 

struct cmd_results *FUNC3(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "hide_cursor", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}
	if (!config->handler_context.seat_config) {
		return FUNC1(CMD_FAILURE, "No seat defined");
	}

	char *end;
	int timeout = FUNC2(argv[0], &end, 10);
	if (*end) {
		return FUNC1(CMD_INVALID, "Expected an integer timeout");
	}
	if (timeout < 100 && timeout != 0) {
		timeout = 100;
	}
	config->handler_context.seat_config->hide_cursor_timeout = timeout;

	return FUNC1(CMD_SUCCESS, NULL);
}