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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_cache ; 
 scalar_t__ g_diff ; 
 int /*<<< orphan*/  g_output ; 
 int /*<<< orphan*/  g_zstdcli ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 

int FUNC11(int argc, char** argv) {
    /* Parse args and validate modules. */
    int ret = FUNC8(argc, argv);
    if (ret != 0)
        return ret;

    if (FUNC0())
        return 1;

    /* Initialize modules. */
    FUNC7(g_zstdcli);
    ret = FUNC2(g_cache);
    if (ret != 0) {
        FUNC6(stderr, "data_init() failed with error=%s\n", FUNC10(ret));
        return 1;
    }

    /* Run the regression tests. */
    ret = 1;
    FILE* results = FUNC5(g_output, "w");
    if (results == NULL) {
        FUNC6(stderr, "Failed to open the output file\n");
        goto out;
    }
    ret = FUNC9(results);
    FUNC4(results);

    if (ret != 0)
        goto out;

    if (g_diff)
        /* Diff the new results with the previous results. */
        ret = FUNC3(g_output, g_diff);

out:
    FUNC1();
    return ret;
}