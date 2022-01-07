
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLStyleElement ;
struct TYPE_3__ {int * nsstyle; } ;
typedef TYPE_1__ HTMLStyleElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLStyleElement_Release (int *) ;

__attribute__((used)) static void HTMLStyleElement_unlink(HTMLDOMNode *iface)
{
    HTMLStyleElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsstyle) {
        nsIDOMHTMLStyleElement *nsstyle = This->nsstyle;

        This->nsstyle = ((void*)0);
        nsIDOMHTMLStyleElement_Release(nsstyle);
    }
}
