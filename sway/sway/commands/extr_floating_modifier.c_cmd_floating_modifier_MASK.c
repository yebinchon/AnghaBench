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
typedef  scalar_t__ uint32_t ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int floating_mod_inverse; scalar_t__ floating_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 struct cmd_results* FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC0(argc, "floating_modifier", EXPECTED_AT_LEAST, 1))) {
		return error;
	}

	uint32_t mod = FUNC2(argv[0]);
	if (!mod) {
		return FUNC1(CMD_INVALID, "Invalid modifier");
	}

	if (argc == 1 || FUNC3(argv[1], "normal") == 0) {
		config->floating_mod_inverse = false;
	} else if (FUNC3(argv[1], "inverse") == 0) {
		config->floating_mod_inverse = true;
	} else {
		return FUNC1(CMD_INVALID,
				"Usage: floating_modifier <mod> [inverse|normal]");
	}

	config->floating_mod = mod;

	return FUNC1(CMD_SUCCESS, NULL);
}