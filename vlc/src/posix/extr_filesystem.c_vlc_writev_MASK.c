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
 int SIGPIPE ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int,struct iovec const*,int) ; 

ssize_t FUNC9(int fd, const struct iovec *iov, int count)
{
    sigset_t set, oset;

    FUNC3(&set);
    FUNC2(&set, SIGPIPE);
    FUNC1(SIG_BLOCK, &set, &oset);

    ssize_t val = FUNC8(fd, iov, count);
    if (val < 0 && errno == EPIPE)
    {
#if (_POSIX_REALTIME_SIGNALS > 0)
        siginfo_t info;
        struct timespec ts = { 0, 0 };

        while (sigtimedwait(&set, &info, &ts) >= 0 || errno != EAGAIN);
#else
        for (;;)
        {
            sigset_t s;
            int num;

            FUNC5(&s);
            if (!FUNC4(&s, SIGPIPE))
                break;

            FUNC7(&set, &num);
            FUNC0(num == SIGPIPE);
        }
#endif
    }

    if (!FUNC4(&oset, SIGPIPE)) /* Restore the signal mask if changed */
        FUNC1(SIG_SETMASK, &oset, NULL);
    return val;
}