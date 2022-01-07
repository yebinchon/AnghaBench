
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int killed; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 scalar_t__ atomic_load (int *) ;
 int stub1 (TYPE_1__*) ;
 int vlc_interrupt_kill (TYPE_1__*) ;
 int vlc_interrupt_raise (TYPE_1__*) ;

__attribute__((used)) static void vlc_interrupt_forward_wake(void *opaque)
{
    void **data = opaque;
    vlc_interrupt_t *to = data[0];
    vlc_interrupt_t *from = data[1];

    (atomic_load(&from->killed) ? vlc_interrupt_kill
                                : vlc_interrupt_raise)(to);
}
