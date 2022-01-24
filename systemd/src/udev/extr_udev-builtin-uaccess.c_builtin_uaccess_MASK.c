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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  ENODATA ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int FUNC1 (char const*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(sd_device *dev, int argc, char *argv[], bool test) {
        const char *path = NULL, *seat;
        bool changed_acl = false;
        uid_t uid;
        int r;

        FUNC8(0022);

        /* don't muck around with ACLs when the system is not running systemd */
        if (!FUNC4())
                return 0;

        r = FUNC5(dev, &path);
        if (r < 0) {
                FUNC2(dev, r, "Failed to get device name: %m");
                goto finish;
        }

        if (FUNC6(dev, "ID_SEAT", &seat) < 0)
                seat = "seat0";

        r = FUNC7(seat, NULL, &uid);
        if (r < 0) {
                if (FUNC0(r, -ENXIO, -ENODATA))
                        /* No active session on this seat */
                        r = 0;
                else
                        FUNC2(dev, r, "Failed to determine active user on seat %s: %m", seat);

                goto finish;
        }

        r = FUNC1(path, true, false, 0, true, uid);
        if (r < 0) {
                FUNC3(dev, r == -ENOENT ? LOG_DEBUG : LOG_ERR, r, "Failed to apply ACL: %m");
                goto finish;
        }

        changed_acl = true;
        r = 0;

finish:
        if (path && !changed_acl) {
                int k;

                /* Better be safe than sorry and reset ACL */
                k = FUNC1(path, true, false, 0, false, 0);
                if (k < 0) {
                        FUNC3(dev, k == -ENOENT ? LOG_DEBUG : LOG_ERR, k, "Failed to apply ACL: %m");
                        if (r >= 0)
                                r = k;
                }
        }

        return r;
}