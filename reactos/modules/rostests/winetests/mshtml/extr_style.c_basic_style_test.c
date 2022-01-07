
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLStyle ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef int IHTMLCurrentStyle ;
typedef scalar_t__ HRESULT ;


 int IHTMLCurrentStyle_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_body (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 scalar_t__ IHTMLElement_get_style (int *,int **) ;
 int IHTMLStyle_Release (int *) ;
 scalar_t__ S_OK ;
 int * get_current_style (int *) ;
 int * get_element_by_id (int *,char*) ;
 int ok (int,char*,scalar_t__) ;
 int test_body_style (int *) ;
 int test_current_style (int *) ;
 int test_set_csstext (int *) ;
 int test_style_filters (int *) ;

__attribute__((used)) static void basic_style_test(IHTMLDocument2 *doc)
{
    IHTMLCurrentStyle *cstyle;
    IHTMLElement *elem;
    IHTMLStyle *style;
    HRESULT hres;

    hres = IHTMLDocument2_get_body(doc, &elem);
    ok(hres == S_OK, "get_body failed: %08x\n", hres);

    hres = IHTMLElement_get_style(elem, &style);
    ok(hres == S_OK, "get_style failed: %08x\n", hres);

    test_body_style(style);

    cstyle = get_current_style(elem);
    test_current_style(cstyle);
    IHTMLCurrentStyle_Release(cstyle);
    IHTMLElement_Release(elem);

    elem = get_element_by_id(doc, "divid");
    test_style_filters(elem);

    test_set_csstext(style);
    IHTMLStyle_Release(style);
    IHTMLElement_Release(elem);
}
