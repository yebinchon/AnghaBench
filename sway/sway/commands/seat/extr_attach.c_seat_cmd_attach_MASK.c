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
struct seat_attachment_config {int /*<<< orphan*/  identifier; } ;
struct cmd_results {int dummy; } ;
struct TYPE_5__ {TYPE_1__* seat_config; } ;
struct TYPE_6__ {TYPE_2__ handler_context; scalar_t__ reading; } ;
struct TYPE_4__ {int /*<<< orphan*/  attachments; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DEFER ; 
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct seat_attachment_config*) ; 
 struct seat_attachment_config* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "attach", EXPECTED_AT_LEAST, 1))) {
		return error;
	}
	if (!config->handler_context.seat_config) {
		return FUNC1(CMD_FAILURE, "No seat defined");
	}
	if (config->reading) {
		return FUNC1(CMD_DEFER, NULL);
	}

	struct seat_attachment_config *attachment = FUNC3();
	if (!attachment) {
		return FUNC1(CMD_FAILURE,
				"Failed to allocate seat attachment config");
	}
	attachment->identifier = FUNC4(argv[0]);
	FUNC2(config->handler_context.seat_config->attachments, attachment);

	return FUNC1(CMD_SUCCESS, NULL);
}