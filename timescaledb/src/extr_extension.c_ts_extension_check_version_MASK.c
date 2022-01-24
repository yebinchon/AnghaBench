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
 int /*<<< orphan*/  EXTENSION_NAME ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  process_shared_preload_libraries_in_progress ; 
 scalar_t__ FUNC9 (char*,char const*) ; 

void
FUNC10(const char *so_version)
{
	char *sql_version;

	if (!FUNC0() || !FUNC1() || !FUNC5())
		return;
	sql_version = FUNC8();

	if (FUNC9(sql_version, so_version) != 0)
	{
		/*
		 * Throw a FATAL error here so that clients will be forced to reconnect
		 * when they have the wrong extension version loaded.
		 */
		FUNC2(FATAL,
				(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC4("extension \"%s\" version mismatch: shared library version %s; SQL version "
						"%s",
						EXTENSION_NAME,
						so_version,
						sql_version)));
	}

	if (!process_shared_preload_libraries_in_progress && !FUNC7())
	{
		FUNC6();
	}
}