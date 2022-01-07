
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMHTMLElement ;
typedef int dispex_static_data_t ;
struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int element; TYPE_1__ IHTMLTextContainer_iface; } ;
typedef TYPE_2__ HTMLTextContainer ;
typedef int HTMLDocumentNode ;


 int HTMLElement_Init (int *,int *,int *,int *) ;
 int HTMLTextContainerVtbl ;

void HTMLTextContainer_Init(HTMLTextContainer *This, HTMLDocumentNode *doc, nsIDOMHTMLElement *nselem,
        dispex_static_data_t *dispex_data)
{
    This->IHTMLTextContainer_iface.lpVtbl = &HTMLTextContainerVtbl;

    HTMLElement_Init(&This->element, doc, nselem, dispex_data);
}
