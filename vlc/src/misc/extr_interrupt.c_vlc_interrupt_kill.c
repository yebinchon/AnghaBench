
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int killed; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int assert (int ) ;
 int atomic_store (int *,int) ;
 int vlc_interrupt_raise (TYPE_1__*) ;

void vlc_interrupt_kill(vlc_interrupt_t *ctx)
{
    assert(ctx != ((void*)0));

    atomic_store(&ctx->killed, 1);
    vlc_interrupt_raise(ctx);
}
