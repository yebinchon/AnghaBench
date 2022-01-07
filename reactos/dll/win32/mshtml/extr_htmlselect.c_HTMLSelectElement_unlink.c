
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLSelectElement ;
struct TYPE_3__ {int * nsselect; } ;
typedef TYPE_1__ HTMLSelectElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLSelectElement_Release (int *) ;

__attribute__((used)) static void HTMLSelectElement_unlink(HTMLDOMNode *iface)
{
    HTMLSelectElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsselect) {
        nsIDOMHTMLSelectElement *nsselect = This->nsselect;

        This->nsselect = ((void*)0);
        nsIDOMHTMLSelectElement_Release(nsselect);
    }
}
