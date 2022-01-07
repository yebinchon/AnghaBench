
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;
struct pollfd {int dummy; } ;


 int free (struct pollfd*) ;
 scalar_t__ likely (int) ;
 int poll (struct pollfd*,unsigned int,int) ;
 scalar_t__ unlikely (int ) ;
 struct pollfd* vlc_alloc (unsigned int,int) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int (*) (struct pollfd*),struct pollfd*) ;
 int * vlc_interrupt_var ;
 int vlc_poll_i11e_inner (struct pollfd*,unsigned int,int,int *,struct pollfd*) ;

int vlc_poll_i11e(struct pollfd *fds, unsigned nfds, int timeout)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx == ((void*)0))
        return poll(fds, nfds, timeout);

    int ret;

    if (likely(nfds < 255))
    {
        struct pollfd ufd[nfds + 1];

        ret = vlc_poll_i11e_inner(fds, nfds, timeout, ctx, ufd);
    }
    else
    {
        struct pollfd *ufd = vlc_alloc(nfds + 1, sizeof (*ufd));
        if (unlikely(ufd == ((void*)0)))
            return -1;

        vlc_cleanup_push(free, ufd);
        ret = vlc_poll_i11e_inner(fds, nfds, timeout, ctx, ufd);
        vlc_cleanup_pop();
        free(ufd);
    }
    return ret;
}
