
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_interrupt_finish (void*) ;

__attribute__((used)) static void vlc_interrupt_cleanup(void *opaque)
{
    vlc_interrupt_finish(opaque);
}
