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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GUC_DISABLE_LOAD_NAME ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  guc_disable_load ; 
 int /*<<< orphan*/  inval_cache_callback ; 
 int /*<<< orphan*/  post_analyze_hook ; 
 int /*<<< orphan*/  post_parse_analyze_hook ; 
 int /*<<< orphan*/  prev_post_parse_analyze_hook ; 
 int /*<<< orphan*/  prev_shmem_startup_hook ; 
 int /*<<< orphan*/  process_shared_preload_libraries_in_progress ; 
 int /*<<< orphan*/  shmem_startup_hook ; 
 int /*<<< orphan*/  timescale_shmem_startup_hook ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void
FUNC12(void)
{
	if (!process_shared_preload_libraries_in_progress)
	{
		FUNC4();
	}
	FUNC5();

	FUNC3(INFO, "timescaledb loaded");

	FUNC8();
	FUNC10();
	FUNC11();
	FUNC6();
	FUNC7();
	FUNC9();

	/* This is a safety-valve variable to prevent loading the full extension */
	FUNC1(GUC_DISABLE_LOAD_NAME,
							 "Disable the loading of the actual extension",
							 NULL,
							 &guc_disable_load,
							 false,
							 PGC_USERSET,
							 0,
							 NULL,
							 NULL,
							 NULL);

	/*
	 * cannot check for extension here since not inside a transaction yet. Nor
	 * do we even have an assigned database yet
	 */
	FUNC0(inval_cache_callback, FUNC2(NULL));

	/*
	 * using the post_parse_analyze_hook since it's the earliest available
	 * hook
	 */
	prev_post_parse_analyze_hook = post_parse_analyze_hook;
	/* register shmem startup hook for the background worker stuff */
	prev_shmem_startup_hook = shmem_startup_hook;

	post_parse_analyze_hook = post_analyze_hook;
	shmem_startup_hook = timescale_shmem_startup_hook;
}