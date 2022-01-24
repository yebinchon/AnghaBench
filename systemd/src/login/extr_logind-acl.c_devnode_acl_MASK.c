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
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  acl_permset_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int ACL_READ ; 
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_USER ; 
 int ACL_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int errno ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(const char *path,
                bool flush,
                bool del, uid_t old_uid,
                bool add, uid_t new_uid) {

        acl_t acl;
        int r = 0;
        bool changed = false;

        FUNC12(path);

        acl = FUNC6(path, ACL_TYPE_ACCESS);
        if (!acl)
                return -errno;

        if (flush) {

                r = FUNC13(acl);
                if (r < 0)
                        goto finish;
                if (r > 0)
                        changed = true;

        } else if (del && old_uid > 0) {
                acl_entry_t entry;

                r = FUNC4(acl, old_uid, &entry);
                if (r < 0)
                        goto finish;

                if (r > 0) {
                        if (FUNC3(acl, entry) < 0) {
                                r = -errno;
                                goto finish;
                        }

                        changed = true;
                }
        }

        if (add && new_uid > 0) {
                acl_entry_t entry;
                acl_permset_t permset;
                int rd, wt;

                r = FUNC4(acl, new_uid, &entry);
                if (r < 0)
                        goto finish;

                if (r == 0) {
                        if (FUNC2(&acl, &entry) < 0) {
                                r = -errno;
                                goto finish;
                        }

                        if (FUNC11(entry, ACL_USER) < 0 ||
                            FUNC10(entry, &new_uid) < 0) {
                                r = -errno;
                                goto finish;
                        }
                }

                if (FUNC8(entry, &permset) < 0) {
                        r = -errno;
                        goto finish;
                }

                rd = FUNC7(permset, ACL_READ);
                if (rd < 0) {
                        r = -errno;
                        goto finish;
                }

                wt = FUNC7(permset, ACL_WRITE);
                if (wt < 0) {
                        r = -errno;
                        goto finish;
                }

                if (!rd || !wt) {

                        if (FUNC0(permset, ACL_READ|ACL_WRITE) < 0) {
                                r = -errno;
                                goto finish;
                        }

                        changed = true;
                }
        }

        if (!changed)
                goto finish;

        if (FUNC1(&acl) < 0) {
                r = -errno;
                goto finish;
        }

        if (FUNC9(path, ACL_TYPE_ACCESS, acl) < 0) {
                r = -errno;
                goto finish;
        }

        r = 0;

finish:
        FUNC5(acl);

        return r;
}