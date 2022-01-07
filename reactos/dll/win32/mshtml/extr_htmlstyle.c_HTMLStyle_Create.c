
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nsIDOMCSSStyleDeclaration ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IHTMLStyle_iface; int dispex; int * elem; int * nsstyle; } ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLStyle ;
typedef int HTMLElement ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int HTMLStyle2_Init (TYPE_2__*) ;
 int HTMLStyle3_Init (TYPE_2__*) ;
 int HTMLStyleVtbl ;
 int HTMLStyle_dispex ;
 int S_OK ;
 int get_style_from_elem (int *,int **) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMCSSStyleDeclaration_AddRef (int *) ;
 int nsIDOMCSSStyleDeclaration_Release (int *) ;

HRESULT HTMLStyle_Create(HTMLElement *elem, HTMLStyle **ret)
{
    nsIDOMCSSStyleDeclaration *nsstyle;
    HTMLStyle *style;
    HRESULT hres;

    hres = get_style_from_elem(elem, &nsstyle);
    if(FAILED(hres))
        return hres;

    style = heap_alloc_zero(sizeof(HTMLStyle));
    if(!style) {
        nsIDOMCSSStyleDeclaration_Release(nsstyle);
        return E_OUTOFMEMORY;
    }

    style->IHTMLStyle_iface.lpVtbl = &HTMLStyleVtbl;
    style->ref = 1;
    style->nsstyle = nsstyle;
    style->elem = elem;
    HTMLStyle2_Init(style);
    HTMLStyle3_Init(style);

    nsIDOMCSSStyleDeclaration_AddRef(nsstyle);

    init_dispex(&style->dispex, (IUnknown*)&style->IHTMLStyle_iface, &HTMLStyle_dispex);

    *ret = style;
    return S_OK;
}
