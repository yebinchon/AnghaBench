
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLLinkElement ;
struct TYPE_3__ {int * nslink; } ;
typedef TYPE_1__ HTMLLinkElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLLinkElement_Release (int *) ;

__attribute__((used)) static void HTMLLinkElement_unlink(HTMLDOMNode *iface)
{
    HTMLLinkElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nslink) {
        nsIDOMHTMLLinkElement *nslink = This->nslink;

        This->nslink = ((void*)0);
        nsIDOMHTMLLinkElement_Release(nslink);
    }
}
