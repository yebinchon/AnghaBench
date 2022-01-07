
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLTableElement ;
struct TYPE_3__ {int * nstable; } ;
typedef TYPE_1__ HTMLTable ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLTableElement_Release (int *) ;

__attribute__((used)) static void HTMLTable_unlink(HTMLDOMNode *iface)
{
    HTMLTable *This = impl_from_HTMLDOMNode(iface);

    if(This->nstable) {
        nsIDOMHTMLTableElement *nstable = This->nstable;

        This->nstable = ((void*)0);
        nsIDOMHTMLTableElement_Release(nstable);
    }
}
