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
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct iovec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 (int,struct iovec const*,int) ; 

ssize_t FUNC6(int fd, const struct iovec *iov, int count)
{
    sigset_t set, oset;

    FUNC2(&set);
    FUNC1(&set, SIGPIPE);
    FUNC0(SIG_BLOCK, &set, &oset);

    ssize_t val = FUNC5(fd, iov, count);
    if (val < 0 && errno == EPIPE)
    {
        siginfo_t info;
        struct timespec ts = { 0, 0 };

        while (FUNC4(&set, &info, &ts) >= 0 || errno != EAGAIN);
    }

    if (!FUNC3(&oset, SIGPIPE)) /* Restore the signal mask if changed */
        FUNC0(SIG_SETMASK, &oset, NULL);

    return val;
}