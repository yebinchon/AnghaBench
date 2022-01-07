
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLTableRowElement ;
struct TYPE_3__ {int * nsrow; } ;
typedef TYPE_1__ HTMLTableRow ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLTableRowElement_Release (int *) ;

__attribute__((used)) static void HTMLTableRow_unlink(HTMLDOMNode *iface)
{
    HTMLTableRow *This = impl_from_HTMLDOMNode(iface);

    if(This->nsrow) {
        nsIDOMHTMLTableRowElement *nsrow = This->nsrow;

        This->nsrow = ((void*)0);
        nsIDOMHTMLTableRowElement_Release(nsrow);
    }
}
