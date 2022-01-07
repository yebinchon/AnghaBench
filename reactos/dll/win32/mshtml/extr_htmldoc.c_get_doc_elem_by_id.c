
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int nsIDOMElement ;
typedef int nsAString ;
typedef int WCHAR ;
typedef int UINT16 ;
struct TYPE_4__ {int nsdoc; } ;
typedef int HTMLElement ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HRESULT ;


 int DOCUMENT_POSITION_CONTAINS ;
 int DOCUMENT_POSITION_PRECEDING ;
 int ERR (char*,scalar_t__) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (scalar_t__) ;
 int FIXME (char*,scalar_t__) ;
 int IID_nsIDOMElement ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int TRACE (char*,int) ;
 int WARN (char*) ;
 int assert (int) ;
 int get_elem (TYPE_1__*,int *,int **) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMElement_Release (int *) ;
 scalar_t__ nsIDOMHTMLDocument_GetElementById (int ,int *,int **) ;
 scalar_t__ nsIDOMHTMLDocument_GetElementsByName (int ,int *,int **) ;
 scalar_t__ nsIDOMNodeList_Item (int *,int ,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 scalar_t__ nsIDOMNode_CompareDocumentPosition (int *,int *,int*) ;
 scalar_t__ nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;

HRESULT get_doc_elem_by_id(HTMLDocumentNode *doc, const WCHAR *id, HTMLElement **ret)
{
    nsIDOMNodeList *nsnode_list;
    nsIDOMElement *nselem;
    nsIDOMNode *nsnode;
    nsAString id_str;
    nsresult nsres;
    HRESULT hres;

    if(!doc->nsdoc) {
        WARN("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsAString_InitDepend(&id_str, id);

    nsres = nsIDOMHTMLDocument_GetElementById(doc->nsdoc, &id_str, &nselem);
    if(FAILED(nsres)) {
        ERR("GetElementById failed: %08x\n", nsres);
        nsAString_Finish(&id_str);
        return E_FAIL;
    }


    nsres = nsIDOMHTMLDocument_GetElementsByName(doc->nsdoc, &id_str, &nsnode_list);
    nsAString_Finish(&id_str);
    if(FAILED(nsres)) {
        ERR("getElementsByName failed: %08x\n", nsres);
        if(nselem)
            nsIDOMElement_Release(nselem);
        return E_FAIL;
    }

    nsres = nsIDOMNodeList_Item(nsnode_list, 0, &nsnode);
    nsIDOMNodeList_Release(nsnode_list);
    assert(nsres == NS_OK);

    if(nsnode && nselem) {
        UINT16 pos;

        nsres = nsIDOMNode_CompareDocumentPosition(nsnode, (nsIDOMNode*)nselem, &pos);
        if(NS_FAILED(nsres)) {
            FIXME("CompareDocumentPosition failed: 0x%08x\n", nsres);
            nsIDOMNode_Release(nsnode);
            nsIDOMElement_Release(nselem);
            return E_FAIL;
        }

        TRACE("CompareDocumentPosition gave: 0x%x\n", pos);
        if(!(pos & (DOCUMENT_POSITION_PRECEDING | DOCUMENT_POSITION_CONTAINS))) {
            nsIDOMElement_Release(nselem);
            nselem = ((void*)0);
        }
    }

    if(nsnode) {
        if(!nselem) {
            nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIDOMElement, (void**)&nselem);
            assert(nsres == NS_OK);
        }
        nsIDOMNode_Release(nsnode);
    }

    if(!nselem) {
        *ret = ((void*)0);
        return S_OK;
    }

    hres = get_elem(doc, nselem, ret);
    nsIDOMElement_Release(nselem);
    return hres;
}
