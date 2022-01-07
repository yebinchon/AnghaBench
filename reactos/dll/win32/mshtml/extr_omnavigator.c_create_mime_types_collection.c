
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLMimeTypesCollection_iface; int dispex; int * navigator; } ;
typedef int OmNavigator ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLMimeTypesCollection ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLMimeTypesCollectionVtbl ;
 int HTMLMimeTypesCollection_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_mime_types_collection(OmNavigator *navigator, HTMLMimeTypesCollection **ret)
{
    HTMLMimeTypesCollection *col;

    col = heap_alloc_zero(sizeof(*col));
    if(!col)
        return E_OUTOFMEMORY;

    col->IHTMLMimeTypesCollection_iface.lpVtbl = &HTMLMimeTypesCollectionVtbl;
    col->ref = 1;
    col->navigator = navigator;

    init_dispex(&col->dispex, (IUnknown*)&col->IHTMLMimeTypesCollection_iface,
                &HTMLMimeTypesCollection_dispex);

    *ret = col;
    return S_OK;
}
