
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * callback; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int assert (int ) ;
 int vlc_mutex_destroy (int *) ;

void vlc_interrupt_deinit(vlc_interrupt_t *ctx)
{
    assert(ctx->callback == ((void*)0));
    vlc_mutex_destroy(&ctx->lock);
}
