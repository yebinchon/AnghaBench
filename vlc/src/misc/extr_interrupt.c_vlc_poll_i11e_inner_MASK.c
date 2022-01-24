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
typedef  int /*<<< orphan*/  vlc_interrupt_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct pollfd {int fd; scalar_t__ revents; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  EFD_CLOEXEC ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pollfd*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int*) ; 
 int /*<<< orphan*/  vlc_poll_i11e_cleanup ; 
 int /*<<< orphan*/  vlc_poll_i11e_wake ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct pollfd *restrict fds, unsigned nfds,
                               int timeout, vlc_interrupt_t *ctx,
                               struct pollfd *restrict ufd)
{
    int fd[2];
    int ret = -1;
    int canc;

    /* TODO: cache this */
# if defined (HAVE_EVENTFD) && defined (EFD_CLOEXEC)
    canc = vlc_savecancel();
    fd[0] = eventfd(0, EFD_CLOEXEC);
    vlc_restorecancel(canc);
    if (fd[0] != -1)
        fd[1] = fd[0];
    else
# endif
    if (FUNC8(fd))
    {
        FUNC11();
        errno = ENOMEM;
        return -1;
    }

    for (unsigned i = 0; i < nfds; i++)
    {
        ufd[i].fd = fds[i].fd;
        ufd[i].events = fds[i].events;
    }
    ufd[nfds].fd = fd[0];
    ufd[nfds].events = POLLIN;

    FUNC7(ctx, vlc_poll_i11e_wake, fd);

    FUNC4(vlc_poll_i11e_cleanup, ctx);
    ret = FUNC1(ufd, nfds + 1, timeout);

    for (unsigned i = 0; i < nfds; i++)
        fds[i].revents = ufd[i].revents;

    if (ret > 0 && ufd[nfds].revents)
    {
        uint64_t dummy;

        FUNC2(fd[0], &dummy, sizeof (dummy));
        ret--;
    }
    FUNC3();

    if (FUNC6(ctx))
    {
        errno = EINTR;
        ret = -1;
    }

    canc = FUNC10();
    if (fd[1] != fd[0])
        FUNC5(fd[1]);
    FUNC5(fd[0]);
    FUNC9(canc);
    return ret;
}