
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int vlc_interrupt_finish (int *) ;
 int * vlc_interrupt_var ;

int vlc_interrupt_unregister(void)
{
    vlc_interrupt_t *ctx = vlc_interrupt_var;
    return (ctx != ((void*)0)) ? vlc_interrupt_finish(ctx) : 0;
}
