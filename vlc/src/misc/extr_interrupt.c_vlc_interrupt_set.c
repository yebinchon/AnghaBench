
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int * vlc_interrupt_var ;

vlc_interrupt_t *vlc_interrupt_set(vlc_interrupt_t *newctx)
{
    vlc_interrupt_t *oldctx = vlc_interrupt_var;

    vlc_interrupt_var = newctx;
    return oldctx;
}
