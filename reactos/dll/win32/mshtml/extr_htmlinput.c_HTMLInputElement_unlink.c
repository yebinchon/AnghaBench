
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLInputElement ;
struct TYPE_3__ {int * nsinput; } ;
typedef TYPE_1__ HTMLInputElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLInputElement_Release (int *) ;

__attribute__((used)) static void HTMLInputElement_unlink(HTMLDOMNode *iface)
{
    HTMLInputElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsinput) {
        nsIDOMHTMLInputElement *nsinput = This->nsinput;

        This->nsinput = ((void*)0);
        nsIDOMHTMLInputElement_Release(nsinput);
    }
}
