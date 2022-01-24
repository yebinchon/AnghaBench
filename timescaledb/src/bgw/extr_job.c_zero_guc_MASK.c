#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 int /*<<< orphan*/  PGC_SUSET ; 
 int /*<<< orphan*/  PGC_S_SESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(const char *guc_name)
{
	int config_change =
		FUNC3(guc_name, "0", PGC_SUSET, PGC_S_SESSION, GUC_ACTION_SET, true, 0, false);

	if (config_change == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR), FUNC2("guc \"%s\" does not exist", guc_name)));
	else if (config_change < 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INTERNAL_ERROR), FUNC2("could not set \"%s\" guc", guc_name)));
}