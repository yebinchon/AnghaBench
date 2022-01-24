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
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXTENSION_NAME ; 
 char* FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 long FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC6()
{
	/*
	 * This is a load-time check for the correct server version since the
	 * extension may be distributed as a binary
	 */
	char *server_version_num_guc = FUNC0("server_version_num", NULL, false);
	long server_version_num = FUNC5(server_version_num_guc, NULL, 10);

	if (!FUNC4(server_version_num))
	{
		char *server_version_guc = FUNC0("server_version", NULL, false);

		FUNC1(ERROR,
				(FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("extension \"%s\" does not support postgres version %s",
						EXTENSION_NAME,
						server_version_guc)));
	}
}