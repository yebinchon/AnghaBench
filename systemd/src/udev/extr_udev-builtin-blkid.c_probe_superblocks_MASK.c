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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  blkid_probe ;

/* Variables and functions */
 int /*<<< orphan*/  BLKID_PARTS_ENTRY_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC11(blkid_probe pr) {
        struct stat st;
        int rc;

        /* TODO: Return negative errno. */

        if (FUNC10(FUNC5(pr), &st))
                return -errno;

        FUNC3(pr, 1);

        if (!FUNC0(st.st_mode) &&
            FUNC6(pr) <= 1024 * 1440 &&
            FUNC7(pr)) {
                /*
                 * check if the small disk is partitioned, if yes then
                 * don't probe for filesystems.
                 */
                FUNC4(pr, 0);

                rc = FUNC1(pr);
                if (rc < 0)
                        return rc;        /* -1 = error, 1 = nothing, 0 = success */

                if (FUNC8(pr, "PTTYPE", NULL, NULL) == 0)
                        return 0;        /* partition table detected */
        }

        FUNC9(pr, BLKID_PARTS_ENTRY_DETAILS);
        FUNC4(pr, 1);

        return FUNC2(pr);
}