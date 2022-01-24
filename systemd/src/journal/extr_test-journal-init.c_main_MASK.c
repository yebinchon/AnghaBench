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
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FS_NOCOW_FL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int /*<<< orphan*/  SD_JOURNAL_LOCAL_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(int argc, char *argv[]) {
        sd_journal *j;
        int r, i, I = 100;
        char t[] = "/var/tmp/journal-stream-XXXXXX";

        FUNC9(LOG_DEBUG);

        if (argc >= 2) {
                r = FUNC5(argv[1], &I);
                if (r < 0)
                        FUNC2("Could not parse loop count argument. Using default.");
        }

        FUNC2("Running %d loops", I);

        FUNC0(FUNC3(t));
        (void) FUNC1(t, FS_NOCOW_FL, FS_NOCOW_FL, NULL);

        for (i = 0; i < I; i++) {
                r = FUNC7(&j, SD_JOURNAL_LOCAL_ONLY);
                FUNC0(r == 0);

                FUNC6(j);

                r = FUNC8(&j, t, 0);
                FUNC0(r == 0);

                FUNC6(j);

                j = NULL;
                r = FUNC8(&j, t, SD_JOURNAL_LOCAL_ONLY);
                FUNC0(r == -EINVAL);
                FUNC0(j == NULL);
        }

        FUNC0(FUNC4(t, REMOVE_ROOT|REMOVE_PHYSICAL) >= 0);

        return 0;
}