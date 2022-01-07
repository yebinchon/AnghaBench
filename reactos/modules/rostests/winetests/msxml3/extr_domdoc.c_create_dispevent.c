
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IDispatch_iface; } ;
typedef TYPE_2__ dispevent ;
typedef int IDispatch ;


 int dispeventVtbl ;
 TYPE_2__* heap_alloc (int) ;

__attribute__((used)) static IDispatch* create_dispevent(void)
{
    dispevent *event = heap_alloc(sizeof(*event));

    event->IDispatch_iface.lpVtbl = &dispeventVtbl;
    event->ref = 1;

    return (IDispatch*)&event->IDispatch_iface;
}
