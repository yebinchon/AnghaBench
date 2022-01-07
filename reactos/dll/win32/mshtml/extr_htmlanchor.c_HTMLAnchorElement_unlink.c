
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLAnchorElement ;
struct TYPE_3__ {int * nsanchor; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLAnchorElement ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLAnchorElement_Release (int *) ;

__attribute__((used)) static void HTMLAnchorElement_unlink(HTMLDOMNode *iface)
{
    HTMLAnchorElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsanchor) {
        nsIDOMHTMLAnchorElement *nsanchor = This->nsanchor;

        This->nsanchor = ((void*)0);
        nsIDOMHTMLAnchorElement_Release(nsanchor);
    }
}
