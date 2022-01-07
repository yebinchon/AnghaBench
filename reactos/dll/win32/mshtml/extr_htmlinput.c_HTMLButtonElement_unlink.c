
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLButtonElement ;
struct TYPE_3__ {int * nsbutton; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLButtonElement ;


 TYPE_1__* button_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLButtonElement_Release (int *) ;

__attribute__((used)) static void HTMLButtonElement_unlink(HTMLDOMNode *iface)
{
    HTMLButtonElement *This = button_from_HTMLDOMNode(iface);

    if(This->nsbutton) {
        nsIDOMHTMLButtonElement *nsbutton = This->nsbutton;

        This->nsbutton = ((void*)0);
        nsIDOMHTMLButtonElement_Release(nsbutton);
    }
}
