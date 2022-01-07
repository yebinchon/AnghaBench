
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDocument ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {TYPE_2__ nsIDocumentObserver_iface; int nsdoc; } ;
typedef TYPE_1__ HTMLDocumentNode ;


 int ERR (char*,int ) ;
 int IID_nsIDocument ;
 scalar_t__ NS_FAILED (int ) ;
 int content_utils ;
 int nsDocumentObserverVtbl ;
 int nsIContentUtils_AddDocumentObserver (int ,int *,TYPE_2__*) ;
 int nsIDOMHTMLDocument_QueryInterface (int ,int *,void**) ;
 int nsIDocument_Release (int *) ;

void init_document_mutation(HTMLDocumentNode *doc)
{
    nsIDocument *nsdoc;
    nsresult nsres;

    doc->nsIDocumentObserver_iface.lpVtbl = &nsDocumentObserverVtbl;

    nsres = nsIDOMHTMLDocument_QueryInterface(doc->nsdoc, &IID_nsIDocument, (void**)&nsdoc);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDocument: %08x\n", nsres);
        return;
    }

    nsIContentUtils_AddDocumentObserver(content_utils, nsdoc, &doc->nsIDocumentObserver_iface);
    nsIDocument_Release(nsdoc);
}
