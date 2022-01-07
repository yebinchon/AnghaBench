
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLTableCellElement ;
struct TYPE_3__ {int * nscell; } ;
typedef TYPE_1__ HTMLTableCell ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLTableCellElement_Release (int *) ;

__attribute__((used)) static void HTMLTableCell_unlink(HTMLDOMNode *iface)
{
    HTMLTableCell *This = impl_from_HTMLDOMNode(iface);

    if(This->nscell) {
        nsIDOMHTMLTableCellElement *nscell = This->nscell;

        This->nscell = ((void*)0);
        nsIDOMHTMLTableCellElement_Release(nscell);
    }
}
