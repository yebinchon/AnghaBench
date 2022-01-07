
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 scalar_t__ likely (int ) ;
 int * malloc (int) ;
 int vlc_interrupt_init (int *) ;

vlc_interrupt_t *vlc_interrupt_create(void)
{
    vlc_interrupt_t *ctx = malloc(sizeof (*ctx));
    if (likely(ctx != ((void*)0)))
        vlc_interrupt_init(ctx);
    return ctx;
}
