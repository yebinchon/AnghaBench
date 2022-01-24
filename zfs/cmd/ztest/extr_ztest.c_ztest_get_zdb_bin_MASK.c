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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ ztest_dump_core ; 

__attribute__((used)) static void
FUNC10(char *bin, int len)
{
	char *zdb_path;
	/*
	 * Try to use ZDB_PATH and in-tree zdb path. If not successful, just
	 * let popen to search through PATH.
	 */
	if ((zdb_path = FUNC2("ZDB_PATH"))) {
		FUNC7(bin, zdb_path, len); /* In env */
		if (!FUNC9(bin)) {
			ztest_dump_core = 0;
			FUNC1(1, "invalid ZDB_PATH '%s'", bin);
		}
		return;
	}

	FUNC0(FUNC4(FUNC3(), bin) != NULL);
	if (FUNC8(bin, "/ztest/")) {
		FUNC8(bin, "/ztest/")[0] = '\0'; /* In-tree */
		FUNC5(bin, "/zdb/zdb");
		if (FUNC9(bin))
			return;
	}
	FUNC6(bin, "zdb");
}