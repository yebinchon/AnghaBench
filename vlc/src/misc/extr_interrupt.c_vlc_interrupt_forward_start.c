
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_interrupt_t ;


 int assert (int) ;
 int vlc_interrupt_forward_wake ;
 int vlc_interrupt_prepare (int *,int ,void**) ;
 int * vlc_interrupt_var ;

void vlc_interrupt_forward_start(vlc_interrupt_t *to, void *data[2])
{
    data[0] = data[1] = ((void*)0);

    vlc_interrupt_t *from = vlc_interrupt_var;
    if (from == ((void*)0))
        return;

    assert(from != to);
    data[0] = to;
    data[1] = from;
    vlc_interrupt_prepare(from, vlc_interrupt_forward_wake, data);
}
