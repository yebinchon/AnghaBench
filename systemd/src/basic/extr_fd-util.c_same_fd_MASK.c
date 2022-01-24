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
struct stat {int st_mode; scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KCMP_FILE ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC8(int a, int b) {
        struct stat sta, stb;
        pid_t pid;
        int r, fa, fb;

        FUNC3(a >= 0);
        FUNC3(b >= 0);

        /* Compares two file descriptors. Note that semantics are
         * quite different depending on whether we have kcmp() or we
         * don't. If we have kcmp() this will only return true for
         * dup()ed file descriptors, but not otherwise. If we don't
         * have kcmp() this will also return true for two fds of the same
         * file, created by separate open() calls. Since we use this
         * call mostly for filtering out duplicates in the fd store
         * this difference hopefully doesn't matter too much. */

        if (a == b)
                return true;

        /* Try to use kcmp() if we have it. */
        pid = FUNC6();
        r = FUNC7(pid, pid, KCMP_FILE, a, b);
        if (r == 0)
                return true;
        if (r > 0)
                return false;
        if (!FUNC0(errno, ENOSYS, EACCES, EPERM))
                return -errno;

        /* We don't have kcmp(), use fstat() instead. */
        if (FUNC5(a, &sta) < 0)
                return -errno;

        if (FUNC5(b, &stb) < 0)
                return -errno;

        if ((sta.st_mode & S_IFMT) != (stb.st_mode & S_IFMT))
                return false;

        /* We consider all device fds different, since two device fds
         * might refer to quite different device contexts even though
         * they share the same inode and backing dev_t. */

        if (FUNC2(sta.st_mode) || FUNC1(sta.st_mode))
                return false;

        if (sta.st_dev != stb.st_dev || sta.st_ino != stb.st_ino)
                return false;

        /* The fds refer to the same inode on disk, let's also check
         * if they have the same fd flags. This is useful to
         * distinguish the read and write side of a pipe created with
         * pipe(). */
        fa = FUNC4(a, F_GETFL);
        if (fa < 0)
                return -errno;

        fb = FUNC4(b, F_GETFL);
        if (fb < 0)
                return -errno;

        return fa == fb;
}