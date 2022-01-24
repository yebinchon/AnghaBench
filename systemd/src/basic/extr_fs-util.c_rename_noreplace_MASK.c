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

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  ENOTTY ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  RENAME_NOREPLACE ; 
 int errno ; 
 scalar_t__ FUNC1 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char const*,int,char const*) ; 
 scalar_t__ FUNC4 (int,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 

int FUNC6(int olddirfd, const char *oldpath, int newdirfd, const char *newpath) {
        int r;

        /* Try the ideal approach first */
        if (FUNC4(olddirfd, oldpath, newdirfd, newpath, RENAME_NOREPLACE) >= 0)
                return 0;

        /* renameat2() exists since Linux 3.15, btrfs and FAT added support for it later. If it is not implemented,
         * fall back to a different method. */
        if (!FUNC0(errno, EINVAL, ENOSYS, ENOTTY))
                return -errno;

        /* Let's try to use linkat()+unlinkat() as fallback. This doesn't work on directories and on some file systems
         * that do not support hard links (such as FAT, most prominently), but for files it's pretty close to what we
         * want — though not atomic (i.e. for a short period both the new and the old filename will exist). */
        if (FUNC2(olddirfd, oldpath, newdirfd, newpath, 0) >= 0) {

                if (FUNC5(olddirfd, oldpath, 0) < 0) {
                        r = -errno; /* Backup errno before the following unlinkat() alters it */
                        (void) FUNC5(newdirfd, newpath, 0);
                        return r;
                }

                return 0;
        }

        if (!FUNC0(errno, EINVAL, ENOSYS, ENOTTY, EPERM)) /* FAT returns EPERM on link()… */
                return -errno;

        /* OK, neither RENAME_NOREPLACE nor linkat()+unlinkat() worked. Let's then fallback to the racy TOCTOU
         * vulnerable accessat(F_OK) check followed by classic, replacing renameat(), we have nothing better. */

        if (FUNC1(newdirfd, newpath, F_OK, AT_SYMLINK_NOFOLLOW) >= 0)
                return -EEXIST;
        if (errno != ENOENT)
                return -errno;

        if (FUNC3(olddirfd, oldpath, newdirfd, newpath) < 0)
                return -errno;

        return 0;
}