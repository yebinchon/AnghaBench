
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLBodyElement ;
struct TYPE_3__ {int * nsbody; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLBodyElement ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLBodyElement_Release (int *) ;

__attribute__((used)) static void HTMLBodyElement_unlink(HTMLDOMNode *iface)
{
    HTMLBodyElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsbody) {
        nsIDOMHTMLBodyElement *nsbody = This->nsbody;
        This->nsbody = ((void*)0);
        nsIDOMHTMLBodyElement_Release(nsbody);
    }
}
