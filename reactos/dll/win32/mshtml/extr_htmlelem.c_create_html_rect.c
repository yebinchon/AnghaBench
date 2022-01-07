
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsIDOMClientRect ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLRect_iface; int * nsrect; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLRect ;
typedef TYPE_2__ HTMLRect ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLRectVtbl ;
 int HTMLRect_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMClientRect_AddRef (int *) ;

__attribute__((used)) static HRESULT create_html_rect(nsIDOMClientRect *nsrect, IHTMLRect **ret)
{
    HTMLRect *rect;

    rect = heap_alloc_zero(sizeof(HTMLRect));
    if(!rect)
        return E_OUTOFMEMORY;

    rect->IHTMLRect_iface.lpVtbl = &HTMLRectVtbl;
    rect->ref = 1;

    init_dispex(&rect->dispex, (IUnknown*)&rect->IHTMLRect_iface, &HTMLRect_dispex);

    nsIDOMClientRect_AddRef(nsrect);
    rect->nsrect = nsrect;

    *ret = &rect->IHTMLRect_iface;
    return S_OK;
}
