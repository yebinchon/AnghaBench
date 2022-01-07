
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int styleid_t ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int WCHAR ;
typedef int HTMLElement ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int get_style_from_elem (int *,int **) ;
 int nsIDOMCSSStyleDeclaration_Release (int *) ;
 int set_nsstyle_attr (int *,int ,int const*,int ) ;

HRESULT set_elem_style(HTMLElement *elem, styleid_t styleid, const WCHAR *val)
{
    nsIDOMCSSStyleDeclaration *style;
    HRESULT hres;

    hres = get_style_from_elem(elem, &style);
    if(FAILED(hres))
        return hres;

    hres = set_nsstyle_attr(style, styleid, val, 0);
    nsIDOMCSSStyleDeclaration_Release(style);
    return hres;
}
