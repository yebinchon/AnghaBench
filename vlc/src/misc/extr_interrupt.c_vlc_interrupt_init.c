
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupted; int * callback; int killed; int lock; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int atomic_init (int *,int) ;
 int vlc_mutex_init (int *) ;

void vlc_interrupt_init(vlc_interrupt_t *ctx)
{
    vlc_mutex_init(&ctx->lock);
    ctx->interrupted = 0;
    atomic_init(&ctx->killed, 0);
    ctx->callback = ((void*)0);
}
