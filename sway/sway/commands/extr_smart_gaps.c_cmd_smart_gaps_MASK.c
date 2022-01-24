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
struct TYPE_2__ {int /*<<< orphan*/  smart_gaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  EXPECTED_AT_LEAST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct cmd_results* FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cmd_results* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

struct cmd_results *FUNC4(int argc, char **argv) {
	struct cmd_results *error = FUNC1(argc, "smart_gaps", EXPECTED_AT_LEAST, 1);

	if (error) {
		return error;
	}

	config->smart_gaps = FUNC3(argv[0], config->smart_gaps);

	FUNC0();

	return FUNC2(CMD_SUCCESS, NULL);
}