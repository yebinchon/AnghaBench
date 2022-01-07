
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLFormElement ;
struct TYPE_3__ {int * nsform; } ;
typedef TYPE_1__ HTMLFormElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLFormElement_Release (int *) ;

__attribute__((used)) static void HTMLFormElement_unlink(HTMLDOMNode *iface)
{
    HTMLFormElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsform) {
        nsIDOMHTMLFormElement *nsform = This->nsform;

        This->nsform = ((void*)0);
        nsIDOMHTMLFormElement_Release(nsform);
    }
}
