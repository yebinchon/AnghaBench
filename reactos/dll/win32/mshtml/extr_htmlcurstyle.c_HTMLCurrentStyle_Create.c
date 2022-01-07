
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMWindow ;
typedef int nsIDOMElement ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int nsAString ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_19__ {int ref; TYPE_6__ IHTMLCurrentStyle_iface; TYPE_7__* elem; int dispex; int * nsstyle; TYPE_5__ IHTMLCurrentStyle4_iface; TYPE_4__ IHTMLCurrentStyle3_iface; TYPE_3__ IHTMLCurrentStyle2_iface; } ;
struct TYPE_13__ {TYPE_1__* doc; } ;
struct TYPE_18__ {int IHTMLElement_iface; scalar_t__ nselem; TYPE_2__ node; } ;
struct TYPE_12__ {int nsdoc; } ;
typedef int IUnknown ;
typedef TYPE_6__ IHTMLCurrentStyle ;
typedef TYPE_7__ HTMLElement ;
typedef TYPE_8__ HTMLCurrentStyle ;
typedef int HRESULT ;


 int ERR (char*,...) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 int HTMLCurrentStyle2Vtbl ;
 int HTMLCurrentStyle3Vtbl ;
 int HTMLCurrentStyle4Vtbl ;
 int HTMLCurrentStyleVtbl ;
 int HTMLCurrentStyle_dispex ;
 int IHTMLElement_AddRef (int *) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int WARN (char*) ;
 TYPE_8__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMCSSStyleDeclaration_Release (int *) ;
 int nsIDOMHTMLDocument_GetDefaultView (int ,int **) ;
 int nsIDOMWindow_GetComputedStyle (int *,int *,int *,int **) ;
 int nsIDOMWindow_Release (int *) ;

HRESULT HTMLCurrentStyle_Create(HTMLElement *elem, IHTMLCurrentStyle **p)
{
    nsIDOMCSSStyleDeclaration *nsstyle;
    nsIDOMWindow *nsview;
    nsAString nsempty_str;
    HTMLCurrentStyle *ret;
    nsresult nsres;

    if(!elem->node.doc->nsdoc) {
        WARN("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsres = nsIDOMHTMLDocument_GetDefaultView(elem->node.doc->nsdoc, &nsview);
    if(NS_FAILED(nsres)) {
        ERR("GetDefaultView failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsAString_Init(&nsempty_str, ((void*)0));
    nsres = nsIDOMWindow_GetComputedStyle(nsview, (nsIDOMElement*)elem->nselem, &nsempty_str, &nsstyle);
    nsAString_Finish(&nsempty_str);
    nsIDOMWindow_Release(nsview);
    if(NS_FAILED(nsres)) {
        ERR("GetComputedStyle failed: %08x\n", nsres);
        return E_FAIL;
    }

    if(!nsstyle) {
        ERR("GetComputedStyle returned NULL nsstyle\n");
        return E_FAIL;
    }

    ret = heap_alloc_zero(sizeof(HTMLCurrentStyle));
    if(!ret) {
        nsIDOMCSSStyleDeclaration_Release(nsstyle);
        return E_OUTOFMEMORY;
    }

    ret->IHTMLCurrentStyle_iface.lpVtbl = &HTMLCurrentStyleVtbl;
    ret->IHTMLCurrentStyle2_iface.lpVtbl = &HTMLCurrentStyle2Vtbl;
    ret->IHTMLCurrentStyle3_iface.lpVtbl = &HTMLCurrentStyle3Vtbl;
    ret->IHTMLCurrentStyle4_iface.lpVtbl = &HTMLCurrentStyle4Vtbl;
    ret->ref = 1;
    ret->nsstyle = nsstyle;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLCurrentStyle_iface, &HTMLCurrentStyle_dispex);

    IHTMLElement_AddRef(&elem->IHTMLElement_iface);
    ret->elem = elem;

    *p = &ret->IHTMLCurrentStyle_iface;
    return S_OK;
}
