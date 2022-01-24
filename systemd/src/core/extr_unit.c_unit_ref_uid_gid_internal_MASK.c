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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(Unit *u, uid_t uid, gid_t gid, bool clean_ipc) {
        int r = 0, q = 0;

        FUNC0(u);

        /* Reference both a UID and a GID in one go. Either references both, or neither. */

        if (FUNC2(uid)) {
                r = FUNC4(u, uid, clean_ipc);
                if (r < 0)
                        return r;
        }

        if (FUNC1(gid)) {
                q = FUNC3(u, gid, clean_ipc);
                if (q < 0) {
                        if (r > 0)
                                FUNC5(u, false);

                        return q;
                }
        }

        return r > 0 || q > 0;
}