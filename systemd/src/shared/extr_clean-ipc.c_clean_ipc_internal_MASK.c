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
 scalar_t__ GID_INVALID ; 
 scalar_t__ UID_INVALID ; 
 int FUNC0 (scalar_t__,scalar_t__,int) ; 
 int FUNC1 (scalar_t__,scalar_t__,int) ; 
 int FUNC2 (scalar_t__,scalar_t__,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,int) ; 
 int FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(uid_t uid, gid_t gid, bool rm) {
        int ret = 0, r;

        /* If 'rm' is true, clean all IPC objects owned by either the specified UID or the specified GID. Return the
         * last error encountered or == 0 if no matching IPC objects have been found or > 0 if matching IPC objects
         * have been found and have been removed.
         *
         * If 'rm' is false, just search for IPC objects owned by either the specified UID or the specified GID. In
         * this case we return < 0 on error, > 0 if we found a matching object, == 0 if we didn't.
         *
         * As special rule: if UID/GID is specified as root we'll silently not clean up things, and always claim that
         * there are IPC objects for it. */

        if (uid == 0) {
                if (!rm)
                        return 1;

                uid = UID_INVALID;
        }
        if (gid == 0) {
                if (!rm)
                        return 1;

                gid = GID_INVALID;
        }

        /* Anything to do? */
        if (!FUNC6(uid) && !FUNC5(gid))
                return 0;

        r = FUNC4(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = FUNC3(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = FUNC2(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = FUNC1(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        r = FUNC0(uid, gid, rm);
        if (r != 0) {
                if (!rm)
                        return r;
                if (ret == 0)
                        ret = r;
        }

        return ret;
}