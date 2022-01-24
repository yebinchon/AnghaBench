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
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (size_t,scalar_t__ const*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(
                uid_t uid,
                gid_t gid,
                const gid_t *supplementary_gids,
                size_t n_supplementary_gids) {

        if (!FUNC6(uid))
                uid = 0;
        if (!FUNC1(gid))
                gid = 0;

        (void) FUNC0(STDIN_FILENO, uid, gid);
        (void) FUNC0(STDOUT_FILENO, uid, gid);
        (void) FUNC0(STDERR_FILENO, uid, gid);

        if (FUNC3(n_supplementary_gids, supplementary_gids) < 0)
                return FUNC2(errno, "Failed to set auxiliary groups: %m");

        if (FUNC4(gid, gid, gid) < 0)
                return FUNC2(errno, "setresgid() failed: %m");

        if (FUNC5(uid, uid, uid) < 0)
                return FUNC2(errno, "setresuid() failed: %m");

        return 0;
}