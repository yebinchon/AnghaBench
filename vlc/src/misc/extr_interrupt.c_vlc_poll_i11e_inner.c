
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;
typedef int uint64_t ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
typedef int dummy ;


 int EFD_CLOEXEC ;
 int EINTR ;
 int ENOMEM ;
 int POLLIN ;
 int errno ;
 int eventfd (int ,int ) ;
 int poll (struct pollfd*,unsigned int,int) ;
 int read (int,int *,int) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,int *) ;
 int vlc_close (int) ;
 scalar_t__ vlc_interrupt_finish (int *) ;
 int vlc_interrupt_prepare (int *,int ,int*) ;
 scalar_t__ vlc_pipe (int*) ;
 int vlc_poll_i11e_cleanup ;
 int vlc_poll_i11e_wake ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_testcancel () ;

__attribute__((used)) static int vlc_poll_i11e_inner(struct pollfd *restrict fds, unsigned nfds,
                               int timeout, vlc_interrupt_t *ctx,
                               struct pollfd *restrict ufd)
{
    int fd[2];
    int ret = -1;
    int canc;
    if (vlc_pipe(fd))
    {
        vlc_testcancel();
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

    vlc_interrupt_prepare(ctx, vlc_poll_i11e_wake, fd);

    vlc_cleanup_push(vlc_poll_i11e_cleanup, ctx);
    ret = poll(ufd, nfds + 1, timeout);

    for (unsigned i = 0; i < nfds; i++)
        fds[i].revents = ufd[i].revents;

    if (ret > 0 && ufd[nfds].revents)
    {
        uint64_t dummy;

        read(fd[0], &dummy, sizeof (dummy));
        ret--;
    }
    vlc_cleanup_pop();

    if (vlc_interrupt_finish(ctx))
    {
        errno = EINTR;
        ret = -1;
    }

    canc = vlc_savecancel();
    if (fd[1] != fd[0])
        vlc_close(fd[1]);
    vlc_close(fd[0]);
    vlc_restorecancel(canc);
    return ret;
}
