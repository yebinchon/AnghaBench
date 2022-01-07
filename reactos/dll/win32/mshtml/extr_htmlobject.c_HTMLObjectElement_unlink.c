
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLObjectElement ;
struct TYPE_3__ {int * nsobject; } ;
typedef TYPE_1__ HTMLObjectElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLObjectElement_Release (int *) ;

__attribute__((used)) static void HTMLObjectElement_unlink(HTMLDOMNode *iface)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsobject) {
        nsIDOMHTMLObjectElement *nsobject = This->nsobject;

        This->nsobject = ((void*)0);
        nsIDOMHTMLObjectElement_Release(nsobject);
    }
}
