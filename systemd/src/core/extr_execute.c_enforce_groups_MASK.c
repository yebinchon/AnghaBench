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
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(gid_t gid, const gid_t *supplementary_gids, int ngids) {
        int r;

        /* Handle SupplementaryGroups= if it is not empty */
        if (ngids > 0) {
                r = FUNC1(ngids, supplementary_gids);
                if (r < 0)
                        return r;
        }

        if (FUNC0(gid)) {
                /* Then set our gids */
                if (FUNC2(gid, gid, gid) < 0)
                        return -errno;
        }

        return 0;
}