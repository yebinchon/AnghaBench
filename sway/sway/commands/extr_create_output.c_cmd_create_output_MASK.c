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
struct TYPE_2__ {int /*<<< orphan*/  backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  create_output ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	FUNC1(FUNC2(server.backend),
			"Expected a multi backend");

	bool done = false;
	FUNC3(server.backend, create_output, &done);

	if (!done) {
		return FUNC0(CMD_INVALID,
				"Can only create outputs for Wayland or X11 backends");
	}

	return FUNC0(CMD_SUCCESS, NULL);
}