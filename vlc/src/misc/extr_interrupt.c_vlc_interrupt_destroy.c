
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int assert (int ) ;
 int free (int *) ;
 int vlc_interrupt_deinit (int *) ;

void vlc_interrupt_destroy(vlc_interrupt_t *ctx)
{
    assert(ctx != ((void*)0));
    vlc_interrupt_deinit(ctx);
    free(ctx);
}
