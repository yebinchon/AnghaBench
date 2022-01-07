
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMHTMLElement ;
typedef int dispex_static_data_t ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int * nsiframe; int * nsframe; int element; TYPE_1__ IHTMLFrameBase2_iface; TYPE_2__ IHTMLFrameBase_iface; } ;
typedef TYPE_3__ HTMLFrameBase ;
typedef int HTMLDocumentNode ;


 int HTMLElement_Init (int *,int *,int *,int *) ;
 int HTMLFrameBase2Vtbl ;
 int HTMLFrameBaseVtbl ;
 int IID_nsIDOMHTMLFrameElement ;
 int IID_nsIDOMHTMLIFrameElement ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int assert (int) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int *,int *,void**) ;

void HTMLFrameBase_Init(HTMLFrameBase *This, HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem,
        dispex_static_data_t *dispex_data)
{
    nsresult nsres;

    This->IHTMLFrameBase_iface.lpVtbl = &HTMLFrameBaseVtbl;
    This->IHTMLFrameBase2_iface.lpVtbl = &HTMLFrameBase2Vtbl;

    HTMLElement_Init(&This->element, doc, nselem, dispex_data);

    nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLFrameElement, (void**)&This->nsframe);
    if(NS_FAILED(nsres)) {
        This->nsframe = ((void*)0);
        nsres = nsIDOMHTMLElement_QueryInterface(nselem, &IID_nsIDOMHTMLIFrameElement, (void**)&This->nsiframe);
        assert(nsres == NS_OK);
    }else {
        This->nsiframe = ((void*)0);
    }
}
