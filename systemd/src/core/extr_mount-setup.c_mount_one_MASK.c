#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode; int /*<<< orphan*/  where; int /*<<< orphan*/  type; int /*<<< orphan*/  options; int /*<<< orphan*/  flags; int /*<<< orphan*/  what; int /*<<< orphan*/  (* condition_fn ) () ;} ;
typedef  TYPE_1__ MountPoint ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_FOLLOW ; 
 int ENOENT ; 
 int LABEL_IGNORE_ENOENT ; 
 int LABEL_IGNORE_EROFS ; 
 int LOG_DEBUG ; 
 int LOG_ERR ; 
 int MNT_CHECK_WRITABLE ; 
 int MNT_FATAL ; 
 int MNT_IN_CONTAINER ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(const MountPoint *p, bool relabel) {
        int r, priority;

        FUNC1(p);

        priority = (p->mode & MNT_FATAL) ? LOG_ERR : LOG_DEBUG;

        if (p->condition_fn && !p->condition_fn())
                return 0;

        /* Relabel first, just in case */
        if (relabel)
                (void) FUNC3(p->where, LABEL_IGNORE_ENOENT|LABEL_IGNORE_EROFS);

        r = FUNC9(p->where, NULL, AT_SYMLINK_FOLLOW);
        if (r < 0 && r != -ENOENT) {
                FUNC5(priority, r, "Failed to determine whether %s is a mount point: %m", p->where);
                return (p->mode & MNT_FATAL) ? r : 0;
        }
        if (r > 0)
                return 0;

        /* Skip securityfs in a container */
        if (!(p->mode & MNT_IN_CONTAINER) && FUNC2() > 0)
                return 0;

        /* The access mode here doesn't really matter too much, since
         * the mounted file system will take precedence anyway. */
        if (relabel)
                (void) FUNC7(p->where, 0755);
        else
                (void) FUNC6(p->where, 0755);

        FUNC4("Mounting %s to %s of type %s with options %s.",
                  p->what,
                  p->where,
                  p->type,
                  FUNC11(p->options));

        if (FUNC8(p->what,
                  p->where,
                  p->type,
                  p->flags,
                  p->options) < 0) {
                FUNC5(priority, errno, "Failed to mount %s at %s: %m", p->type, p->where);
                return (p->mode & MNT_FATAL) ? -errno : 0;
        }

        /* Relabel again, since we now mounted something fresh here */
        if (relabel)
                (void) FUNC3(p->where, 0);

        if (p->mode & MNT_CHECK_WRITABLE) {
                if (FUNC0(p->where, W_OK) < 0) {
                        r = -errno;

                        (void) FUNC13(p->where);
                        (void) FUNC10(p->where);

                        FUNC5(priority, r, "Mount point %s not writable after mounting: %m", p->where);
                        return (p->mode & MNT_FATAL) ? r : 0;
                }
        }

        return 1;
}