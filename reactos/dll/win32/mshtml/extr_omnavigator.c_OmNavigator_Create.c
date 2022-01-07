
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IOmNavigator_iface; int dispex; } ;
typedef TYPE_1__ OmNavigator ;
typedef int IUnknown ;
typedef TYPE_2__ IOmNavigator ;


 int OmNavigatorVtbl ;
 int OmNavigator_dispex ;
 TYPE_1__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

IOmNavigator *OmNavigator_Create(void)
{
    OmNavigator *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return ((void*)0);

    ret->IOmNavigator_iface.lpVtbl = &OmNavigatorVtbl;
    ret->ref = 1;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IOmNavigator_iface, &OmNavigator_dispex);

    return &ret->IOmNavigator_iface;
}
