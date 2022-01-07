
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupted; int lock; int data; int (* callback ) (int ) ;} ;
typedef TYPE_1__ vlc_interrupt_t ;


 int assert (int ) ;
 int stub1 (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_interrupt_raise(vlc_interrupt_t *ctx)
{
    assert(ctx != ((void*)0));





    vlc_mutex_lock(&ctx->lock);
    ctx->interrupted = 1;
    if (ctx->callback != ((void*)0))
        ctx->callback(ctx->data);
    vlc_mutex_unlock(&ctx->lock);
}
