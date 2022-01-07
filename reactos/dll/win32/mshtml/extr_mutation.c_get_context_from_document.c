
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsresult ;
typedef int nsIDocument ;
typedef int nsIDOMHTMLDocument ;
typedef int JSContext ;


 int IID_nsIDocument ;
 scalar_t__ NS_OK ;
 int TRACE (char*,int *) ;
 int assert (int) ;
 int content_utils ;
 int * nsIContentUtils_GetContextFromDocument (int ,int *) ;
 scalar_t__ nsIDOMHTMLDocument_QueryInterface (int *,int *,void**) ;
 int nsIDocument_Release (int *) ;

JSContext *get_context_from_document(nsIDOMHTMLDocument *nsdoc)
{
    nsIDocument *doc;
    JSContext *ctx;
    nsresult nsres;

    nsres = nsIDOMHTMLDocument_QueryInterface(nsdoc, &IID_nsIDocument, (void**)&doc);
    assert(nsres == NS_OK);

    ctx = nsIContentUtils_GetContextFromDocument(content_utils, doc);
    nsIDocument_Release(doc);

    TRACE("ret %p\n", ctx);
    return ctx;
}
