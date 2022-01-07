
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int vlc_interrupt_prepare (int *,void (*) (void*),void*) ;
 int * vlc_interrupt_var ;

void vlc_interrupt_register(void (*cb)(void *), void *opaque)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    if (ctx != ((void*)0))
        vlc_interrupt_prepare(ctx, cb, opaque);
}
