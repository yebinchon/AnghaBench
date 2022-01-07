
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLFiltersCollection_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLFiltersCollection ;
typedef TYPE_2__ HTMLFiltersCollection ;


 int HTMLFiltersCollectionVtbl ;
 int HTMLFiltersCollection_dispex ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;

__attribute__((used)) static IHTMLFiltersCollection *HTMLFiltersCollection_Create(void)
{
    HTMLFiltersCollection *ret = heap_alloc(sizeof(HTMLFiltersCollection));

    ret->IHTMLFiltersCollection_iface.lpVtbl = &HTMLFiltersCollectionVtbl;
    ret->ref = 1;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLFiltersCollection_iface,
            &HTMLFiltersCollection_dispex);

    return &ret->IHTMLFiltersCollection_iface;
}
