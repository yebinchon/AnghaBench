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
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  NOBODY_USER_NAME ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_CLEAR_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_gid ; 
 int /*<<< orphan*/  test_uid ; 

__attribute__((used)) static int FUNC4(bool *run_ambient) {
        struct passwd *nobody;
        int r;

        nobody = FUNC1(NOBODY_USER_NAME);
        if (!nobody)
                return FUNC2(FUNC0(ENOENT), "Could not find nobody user: %m");

        test_uid = nobody->pw_uid;
        test_gid = nobody->pw_gid;

        *run_ambient = false;

        r = FUNC3(PR_CAP_AMBIENT, PR_CAP_AMBIENT_CLEAR_ALL, 0, 0, 0);

        /* There's support for PR_CAP_AMBIENT if the prctl() call
         * succeeded or error code was something else than EINVAL. The
         * EINVAL check should be good enough to rule out false
         * positives. */

        if (r >= 0 || errno != EINVAL)
                *run_ambient = true;

        return 0;
}