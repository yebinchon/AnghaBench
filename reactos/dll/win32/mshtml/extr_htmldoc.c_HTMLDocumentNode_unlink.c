
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMHTMLDocument ;
struct TYPE_4__ {int * window; int * nsdoc; } ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLDocument_Release (int *) ;
 int release_document_mutation (TYPE_1__*) ;

__attribute__((used)) static void HTMLDocumentNode_unlink(HTMLDOMNode *iface)
{
    HTMLDocumentNode *This = impl_from_HTMLDOMNode(iface);

    if(This->nsdoc) {
        nsIDOMHTMLDocument *nsdoc = This->nsdoc;

        release_document_mutation(This);
        This->nsdoc = ((void*)0);
        nsIDOMHTMLDocument_Release(nsdoc);
        This->window = ((void*)0);
    }
}
