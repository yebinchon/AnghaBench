
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ callback; void* const* data; } ;
typedef TYPE_1__ vlc_interrupt_t ;


 int assert (int) ;
 int vlc_interrupt_finish (TYPE_1__*) ;
 scalar_t__ vlc_interrupt_forward_wake ;

int vlc_interrupt_forward_stop(void *const data[2])
{
    vlc_interrupt_t *from = data[1];
    if (from == ((void*)0))
        return 0;

    assert(from->callback == vlc_interrupt_forward_wake);
    assert(from->data == data);
    return vlc_interrupt_finish(from);
}
