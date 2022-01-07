
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLTextAreaElement ;
struct TYPE_3__ {int * nstextarea; } ;
typedef TYPE_1__ HTMLTextAreaElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLTextAreaElement_Release (int *) ;

__attribute__((used)) static void HTMLTextAreaElement_unlink(HTMLDOMNode *iface)
{
    HTMLTextAreaElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nstextarea) {
        nsIDOMHTMLTextAreaElement *nstextarea = This->nstextarea;

        This->nstextarea = ((void*)0);
        nsIDOMHTMLTextAreaElement_Release(nstextarea);
    }
}
