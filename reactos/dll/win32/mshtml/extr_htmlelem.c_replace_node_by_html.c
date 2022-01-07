
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMRange ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLDocument ;
typedef int nsIDOMDocumentFragment ;
typedef int nsAString ;
typedef int WCHAR ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int S_OK ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMDocumentFragment_Release (int *) ;
 int nsIDOMHTMLDocument_CreateRange (int *,int **) ;
 int nsIDOMNode_GetParentNode (int *,int **) ;
 int nsIDOMNode_Release (int *) ;
 int nsIDOMNode_ReplaceChild (int *,int *,int *,int **) ;
 int nsIDOMRange_CreateContextualFragment (int *,int *,int **) ;
 int nsIDOMRange_Release (int *) ;

HRESULT replace_node_by_html(nsIDOMHTMLDocument *nsdoc, nsIDOMNode *nsnode, const WCHAR *html)
{
    nsIDOMDocumentFragment *nsfragment;
    nsIDOMNode *nsparent;
    nsIDOMRange *range;
    nsAString html_str;
    nsresult nsres;
    HRESULT hres = S_OK;

    nsres = nsIDOMHTMLDocument_CreateRange(nsdoc, &range);
    if(NS_FAILED(nsres)) {
        ERR("CreateRange failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsAString_InitDepend(&html_str, html);
    nsIDOMRange_CreateContextualFragment(range, &html_str, &nsfragment);
    nsIDOMRange_Release(range);
    nsAString_Finish(&html_str);
    if(NS_FAILED(nsres)) {
        ERR("CreateContextualFragment failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMNode_GetParentNode(nsnode, &nsparent);
    if(NS_SUCCEEDED(nsres) && nsparent) {
        nsIDOMNode *nstmp;

        nsres = nsIDOMNode_ReplaceChild(nsparent, (nsIDOMNode*)nsfragment, nsnode, &nstmp);
        nsIDOMNode_Release(nsparent);
        if(NS_FAILED(nsres)) {
            ERR("ReplaceChild failed: %08x\n", nsres);
            hres = E_FAIL;
        }else if(nstmp) {
            nsIDOMNode_Release(nstmp);
        }
    }else {
        ERR("GetParentNode failed: %08x\n", nsres);
        hres = E_FAIL;
    }

    nsIDOMDocumentFragment_Release(nsfragment);
    return hres;
}
