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
typedef  int /*<<< orphan*/ * post_parse_analyze_hook_type ;
typedef  int /*<<< orphan*/ * PGFunction ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* EXTENSION_SO ; 
 int MAX_SO_NAME_LEN ; 
 int /*<<< orphan*/  MAX_VERSION_LEN ; 
 int /*<<< orphan*/  PGC_S_SESSION ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  POST_LOAD_INIT_FN ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * extension_post_parse_analyze_hook ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int loaded ; 
 int /*<<< orphan*/ * post_parse_analyze_hook ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  soversion ; 
 scalar_t__ FUNC12 (char*,char*) ; 

__attribute__((used)) static void inline FUNC13()
{
	char *version = FUNC9();
	char soname[MAX_SO_NAME_LEN];
	post_parse_analyze_hook_type old_hook;

	FUNC8(soversion, version, MAX_VERSION_LEN);

	/*
	 * An inval_relcache callback can be called after previous checks of
	 * loaded had found it to be false. But the inval_relcache callback may
	 * load the extension setting it to true. Thus it needs to be rechecked
	 * here again by the outer call after inval_relcache completes. This is
	 * double-check locking, in effect.
	 */
	if (loaded)
		return;

	FUNC11(soname, MAX_SO_NAME_LEN, "%s-%s", EXTENSION_SO, version);

	/*
	 * Set to true whether or not the load succeeds to prevent reloading if
	 * failure happened after partial load.
	 */
	loaded = true;

	/*
	 * In a parallel worker, we're not responsible for loading libraries, it's
	 * handled by the parallel worker infrastructure which restores the
	 * library state.
	 */
	if (FUNC0())
		return;

	/*
	 * Set the config option to let versions 0.9.0 and 0.9.1 know that the
	 * loader was preloaded, newer versions use rendezvous variables instead.
	 */
	if (FUNC12(version, "0.9.0") == 0 || FUNC12(version, "0.9.1") == 0)
		FUNC7("timescaledb.loader_present", "on", PGC_USERSET, PGC_S_SESSION);

	/*
	 * we need to capture the loaded extension's post analyze hook, giving it
	 * a NULL as previous
	 */
	old_hook = post_parse_analyze_hook;
	post_parse_analyze_hook = NULL;

	/*
	 * We want to call the post_parse_analyze_hook from the versioned
	 * extension after we've loaded the versioned so. When the file is loaded
	 * it sets post_parse_analyze_hook, which we capture and store in
	 * extension_post_parse_analyze_hook to call at the end _PG_init
	 */
	FUNC6();
	{
		PGFunction ts_post_load_init =
			FUNC10(soname, POST_LOAD_INIT_FN, false, NULL);

		if (ts_post_load_init != NULL)
			FUNC2(ts_post_load_init, FUNC1(0));
	}
	FUNC3();
	{
		extension_post_parse_analyze_hook = post_parse_analyze_hook;
		post_parse_analyze_hook = old_hook;
		FUNC5();
	}
	FUNC4();

	extension_post_parse_analyze_hook = post_parse_analyze_hook;
	post_parse_analyze_hook = old_hook;
}