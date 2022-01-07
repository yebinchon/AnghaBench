
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsAString ;
struct TYPE_3__ {int nsdoc; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 int IID_nsIDOMNode ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debugstr_w (int ) ;
 char* heap_strdupWtoA (int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int *) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLDocument_QueryInterface (int ,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int nsnode_to_nsstring (int *,int *) ;

__attribute__((used)) static HRESULT get_doc_string(HTMLDocumentNode *This, char **str)
{
    nsIDOMNode *nsnode;
    LPCWSTR strw;
    nsAString nsstr;
    nsresult nsres;
    HRESULT hres;

    if(!This->nsdoc) {
        WARN("NULL nsdoc\n");
        return E_UNEXPECTED;
    }

    nsres = nsIDOMHTMLDocument_QueryInterface(This->nsdoc, &IID_nsIDOMNode, (void**)&nsnode);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMNode failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsAString_Init(&nsstr, ((void*)0));
    hres = nsnode_to_nsstring(nsnode, &nsstr);
    nsIDOMNode_Release(nsnode);
    if(FAILED(hres)) {
        nsAString_Finish(&nsstr);
        return hres;
    }

    nsAString_GetData(&nsstr, &strw);
    TRACE("%s\n", debugstr_w(strw));

    *str = heap_strdupWtoA(strw);

    nsAString_Finish(&nsstr);

    if(!*str)
        return E_OUTOFMEMORY;
    return S_OK;
}
