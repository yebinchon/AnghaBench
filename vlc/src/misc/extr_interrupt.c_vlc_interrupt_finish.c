
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int interrupted; int lock; int * callback; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int EINTR ;
 int assert (int) ;
 TYPE_1__* vlc_interrupt_var ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlc_interrupt_finish(vlc_interrupt_t *ctx)
{
    int ret = 0;

    assert(ctx != ((void*)0));
    assert(ctx == vlc_interrupt_var);


    vlc_mutex_lock(&ctx->lock);
    ctx->callback = ((void*)0);
    if (ctx->interrupted)
    {
        ret = EINTR;
        ctx->interrupted = 0;
    }
    vlc_mutex_unlock(&ctx->lock);
    return ret;
}
