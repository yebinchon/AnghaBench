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
struct TYPE_2__ {int /*<<< orphan*/  hide_edge_borders_smart; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  ESMART_NO_GAPS ; 
 int /*<<< orphan*/  ESMART_OFF ; 
 int /*<<< orphan*/  ESMART_ON ; 
 int /*<<< orphan*/  EXPECTED_EQUAL_TO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

struct cmd_results *FUNC5(int argc, char **argv) {
	struct cmd_results *error = NULL;
	if ((error = FUNC1(argc, "smart_borders", EXPECTED_EQUAL_TO, 1))) {
		return error;
	}

	if (FUNC4(argv[0], "no_gaps") == 0) {
		config->hide_edge_borders_smart = ESMART_NO_GAPS;
	} else {
		config->hide_edge_borders_smart = FUNC3(argv[0], true) ?
			ESMART_ON : ESMART_OFF;
	}

	FUNC0();

	return FUNC2(CMD_SUCCESS, NULL);
}