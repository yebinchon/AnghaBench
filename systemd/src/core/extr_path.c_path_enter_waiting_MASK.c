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
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_FAILURE_RESOURCES ; 
 int /*<<< orphan*/  PATH_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(Path *p, bool initial, bool recheck) {
        int r;

        if (recheck)
                if (FUNC3(p, initial)) {
                        FUNC1(FUNC0(p), "Got triggered.");
                        FUNC5(p);
                        return;
                }

        r = FUNC7(p);
        if (r < 0)
                goto fail;

        /* Hmm, so now we have created inotify watches, but the file
         * might have appeared/been removed by now, so we must
         * recheck */

        if (recheck)
                if (FUNC3(p, false)) {
                        FUNC1(FUNC0(p), "Got triggered.");
                        FUNC5(p);
                        return;
                }

        FUNC6(p, PATH_WAITING);
        return;

fail:
        FUNC2(FUNC0(p), r, "Failed to enter waiting state: %m");
        FUNC4(p, PATH_FAILURE_RESOURCES);
}