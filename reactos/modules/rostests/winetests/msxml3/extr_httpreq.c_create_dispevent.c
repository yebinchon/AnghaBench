
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDispatch_iface; } ;
typedef TYPE_1__ dispevent ;
typedef TYPE_2__ IDispatch ;


 int dispeventVtbl ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static IDispatch* create_dispevent(void)
{
    dispevent *event = heap_alloc(sizeof(*event));

    event->IDispatch_iface.lpVtbl = &dispeventVtbl;
    event->ref = 1;

    return &event->IDispatch_iface;
}
