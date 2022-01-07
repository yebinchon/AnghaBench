
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef int WCHAR ;
struct TYPE_3__ {int nsdoc; } ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int WARN (char*) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMElement_QueryInterface (int *,int *,void**) ;
 int nsIDOMElement_Release (int *) ;
 int nsIDOMHTMLDocument_CreateElement (int ,int *,int **) ;

HRESULT create_nselem(HTMLDocumentNode *doc, const WCHAR *tag, nsIDOMHTMLElement **ret)
{
    nsIDOMElement *nselem;
    nsAString tag_str;
    nsresult nsres;

    if(!doc->nsdoc) {
        WARN("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsAString_InitDepend(&tag_str, tag);
    nsres = nsIDOMHTMLDocument_CreateElement(doc->nsdoc, &tag_str, &nselem);
    nsAString_Finish(&tag_str);
    if(NS_FAILED(nsres)) {
        ERR("CreateElement failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMElement_QueryInterface(nselem, &IID_nsIDOMHTMLElement, (void**)ret);
    nsIDOMElement_Release(nselem);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMHTMLElement iface: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}
