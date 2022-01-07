
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLOptionElement ;
struct TYPE_3__ {int * nsoption; } ;
typedef TYPE_1__ HTMLOptionElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLOptionElement_Release (int *) ;

__attribute__((used)) static void HTMLOptionElement_unlink(HTMLDOMNode *iface)
{
    HTMLOptionElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsoption) {
        nsIDOMHTMLOptionElement *nsoption = This->nsoption;

        This->nsoption = ((void*)0);
        nsIDOMHTMLOptionElement_Release(nsoption);
    }
}
