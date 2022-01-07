
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMElementCSSInlineStyle ;
typedef int nsIDOMCSSStyleDeclaration ;
struct TYPE_3__ {int nselem; } ;
typedef TYPE_1__ HTMLElement ;
typedef int HRESULT ;


 int ERR (char*,scalar_t__) ;
 int E_FAIL ;
 int E_NOTIMPL ;
 int FIXME (char*) ;
 int IID_nsIDOMElementCSSInlineStyle ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int S_OK ;
 int assert (int) ;
 scalar_t__ nsIDOMElementCSSInlineStyle_GetStyle (int *,int **) ;
 int nsIDOMElementCSSInlineStyle_Release (int *) ;
 scalar_t__ nsIDOMHTMLElement_QueryInterface (int ,int *,void**) ;

__attribute__((used)) static HRESULT get_style_from_elem(HTMLElement *elem, nsIDOMCSSStyleDeclaration **ret)
{
    nsIDOMElementCSSInlineStyle *nselemstyle;
    nsresult nsres;

    if(!elem->nselem) {
        FIXME("NULL nselem\n");
        return E_NOTIMPL;
    }

    nsres = nsIDOMHTMLElement_QueryInterface(elem->nselem, &IID_nsIDOMElementCSSInlineStyle,
            (void**)&nselemstyle);
    assert(nsres == NS_OK);

    nsres = nsIDOMElementCSSInlineStyle_GetStyle(nselemstyle, ret);
    nsIDOMElementCSSInlineStyle_Release(nselemstyle);
    if(NS_FAILED(nsres)) {
        ERR("GetStyle failed: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}
