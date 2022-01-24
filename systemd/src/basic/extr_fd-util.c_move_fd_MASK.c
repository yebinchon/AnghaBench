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
 int EBADF ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(int from, int to, int cloexec) {
        int r;

        /* Move fd 'from' to 'to', make sure FD_CLOEXEC remains equal if requested, and release the old fd. If
         * 'cloexec' is passed as -1, the original FD_CLOEXEC is inherited for the new fd. If it is 0, it is turned
         * off, if it is > 0 it is turned on. */

        if (from < 0)
                return -EBADF;
        if (to < 0)
                return -EBADF;

        if (from == to) {

                if (cloexec >= 0) {
                        r = FUNC3(to, cloexec);
                        if (r < 0)
                                return r;
                }

                return to;
        }

        if (cloexec < 0) {
                int fl;

                fl = FUNC2(from, F_GETFD, 0);
                if (fl < 0)
                        return -errno;

                cloexec = !!(fl & FD_CLOEXEC);
        }

        r = FUNC1(from, to, cloexec ? O_CLOEXEC : 0);
        if (r < 0)
                return -errno;

        FUNC0(r == to);

        FUNC4(from);

        return to;
}