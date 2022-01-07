
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLEventObj_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLEventObj ;


 int HTMLEventObjVtbl ;
 int HTMLEventObj_dispex ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

__attribute__((used)) static HTMLEventObj *create_event(void)
{
    HTMLEventObj *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->IHTMLEventObj_iface.lpVtbl = &HTMLEventObjVtbl;
    ret->ref = 1;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLEventObj_iface, &HTMLEventObj_dispex);

    return ret;
}
