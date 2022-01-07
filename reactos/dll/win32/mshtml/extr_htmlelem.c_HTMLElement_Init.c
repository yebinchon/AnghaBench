
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
struct TYPE_21__ {int * vtbl; } ;
typedef TYPE_7__ dispex_static_data_t ;
struct TYPE_18__ {int dispex; } ;
struct TYPE_14__ {TYPE_6__* vtbl; int * cp_container; int * nsnode; TYPE_4__ event_target; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_22__ {TYPE_13__ node; TYPE_5__ IHTMLElement_iface; int cp_container; int * nselem; TYPE_3__ IHTMLElement4_iface; TYPE_2__ IHTMLElement3_iface; TYPE_1__ IHTMLElement2_iface; } ;
struct TYPE_20__ {int cpc_entries; } ;
typedef int IUnknown ;
typedef TYPE_8__ HTMLElement ;
typedef int HTMLDocumentNode ;


 int ConnectionPointContainer_Init (int *,int *,int ) ;
 int HTMLDOMNode_Init (int *,TYPE_13__*,int *) ;
 int HTMLElement2Vtbl ;
 int HTMLElement3Vtbl ;
 int HTMLElement4Vtbl ;
 int HTMLElementVtbl ;
 TYPE_7__ HTMLElement_dispex ;
 int HTMLElement_dispex_vtbl ;
 int assert (int) ;
 int init_dispex (int *,int *,TYPE_7__*) ;

void HTMLElement_Init(HTMLElement *This, HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem, dispex_static_data_t *dispex_data)
{
    This->IHTMLElement_iface.lpVtbl = &HTMLElementVtbl;
    This->IHTMLElement2_iface.lpVtbl = &HTMLElement2Vtbl;
    This->IHTMLElement3_iface.lpVtbl = &HTMLElement3Vtbl;
    This->IHTMLElement4_iface.lpVtbl = &HTMLElement4Vtbl;

    if(dispex_data && !dispex_data->vtbl)
        dispex_data->vtbl = &HTMLElement_dispex_vtbl;
    init_dispex(&This->node.event_target.dispex, (IUnknown*)&This->IHTMLElement_iface,
            dispex_data ? dispex_data : &HTMLElement_dispex);

    if(nselem) {
        HTMLDOMNode_Init(doc, &This->node, (nsIDOMNode*)nselem);


        assert((nsIDOMNode*)nselem == This->node.nsnode);
        This->nselem = nselem;
    }

    This->node.cp_container = &This->cp_container;
    ConnectionPointContainer_Init(&This->cp_container, (IUnknown*)&This->IHTMLElement_iface, This->node.vtbl->cpc_entries);
}
