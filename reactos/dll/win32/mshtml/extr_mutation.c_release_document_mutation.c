
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDocument ;
struct TYPE_3__ {int nsIDocumentObserver_iface; int nsdoc; } ;
typedef TYPE_1__ HTMLDocumentNode ;


 int ERR (char*,int ) ;
 int IID_nsIDocument ;
 scalar_t__ NS_FAILED (int ) ;
 int content_utils ;
 int nsIContentUtils_RemoveDocumentObserver (int ,int *,int *) ;
 int nsIDOMHTMLDocument_QueryInterface (int ,int *,void**) ;
 int nsIDocument_Release (int *) ;

void release_document_mutation(HTMLDocumentNode *doc)
{
    nsIDocument *nsdoc;
    nsresult nsres;

    nsres = nsIDOMHTMLDocument_QueryInterface(doc->nsdoc, &IID_nsIDocument, (void**)&nsdoc);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDocument: %08x\n", nsres);
        return;
    }

    nsIContentUtils_RemoveDocumentObserver(content_utils, nsdoc, &doc->nsIDocumentObserver_iface);
    nsIDocument_Release(nsdoc);
}
