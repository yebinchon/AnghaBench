
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLPluginsCollection_iface; int dispex; int * navigator; } ;
typedef int OmNavigator ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLPluginsCollection ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLPluginsCollectionVtbl ;
 int HTMLPluginsCollection_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

__attribute__((used)) static HRESULT create_plugins_collection(OmNavigator *navigator, HTMLPluginsCollection **ret)
{
    HTMLPluginsCollection *col;

    col = heap_alloc_zero(sizeof(*col));
    if(!col)
        return E_OUTOFMEMORY;

    col->IHTMLPluginsCollection_iface.lpVtbl = &HTMLPluginsCollectionVtbl;
    col->ref = 1;
    col->navigator = navigator;

    init_dispex(&col->dispex, (IUnknown*)&col->IHTMLPluginsCollection_iface,
                &HTMLPluginsCollection_dispex);

    *ret = col;
    return S_OK;
}
