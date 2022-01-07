
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMStyleSheet ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStyleSheet_iface; int * nsstylesheet; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLStyleSheet ;
typedef TYPE_2__ HTMLStyleSheet ;


 int ERR (char*,int ) ;
 int HTMLStyleSheetVtbl ;
 int HTMLStyleSheet_dispex ;
 int IID_nsIDOMCSSStyleSheet ;
 scalar_t__ NS_FAILED (int ) ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int nsIDOMStyleSheet_QueryInterface (int *,int *,void**) ;

IHTMLStyleSheet *HTMLStyleSheet_Create(nsIDOMStyleSheet *nsstylesheet)
{
    HTMLStyleSheet *ret = heap_alloc(sizeof(HTMLStyleSheet));
    nsresult nsres;

    ret->IHTMLStyleSheet_iface.lpVtbl = &HTMLStyleSheetVtbl;
    ret->ref = 1;
    ret->nsstylesheet = ((void*)0);

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLStyleSheet_iface, &HTMLStyleSheet_dispex);

    if(nsstylesheet) {
        nsres = nsIDOMStyleSheet_QueryInterface(nsstylesheet, &IID_nsIDOMCSSStyleSheet,
                (void**)&ret->nsstylesheet);
        if(NS_FAILED(nsres))
            ERR("Could not get nsICSSStyleSheet interface: %08x\n", nsres);
    }

    return &ret->IHTMLStyleSheet_iface;
}
