
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLStyleSheetRulesCollection ;
typedef int IHTMLStyleSheet ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 int DIID_DispHTMLStyleSheet ;
 int DIID_DispHTMLStyleSheetRulesCollection ;
 int FALSE ;
 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IHTMLStyleSheetRulesCollection_Release (int *) ;
 int IHTMLStyleSheet_Release (int *) ;
 scalar_t__ IHTMLStyleSheet_get_href (int *,int **) ;
 scalar_t__ IHTMLStyleSheet_get_rules (int *,int **) ;
 int IID_IHTMLStyleSheet ;
 int IID_IHTMLStyleSheetRulesCollection ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int TRUE ;
 int ok (int,char*,...) ;
 int set_stylesheet_csstext (int *,char*,int ) ;
 int test_disp2 (int *,int *,int *,char*) ;
 int test_stylesheet_csstext (int *,char*,int ) ;

__attribute__((used)) static void test_stylesheet(IDispatch *disp)
{
    IHTMLStyleSheetRulesCollection *col = ((void*)0);
    IHTMLStyleSheet *stylesheet;
    HRESULT hres;
    BSTR href;

    test_disp2((IUnknown*)disp, &DIID_DispHTMLStyleSheet, &IID_IHTMLStyleSheet, "[object]");

    hres = IDispatch_QueryInterface(disp, &IID_IHTMLStyleSheet, (void**)&stylesheet);
    ok(hres == S_OK, "Could not get IHTMLStyleSheet: %08x\n", hres);

    hres = IHTMLStyleSheet_get_rules(stylesheet, &col);
    ok(hres == S_OK, "get_rules failed: %08x\n", hres);
    ok(col != ((void*)0), "col == NULL\n");

    test_disp2((IUnknown*)col, &DIID_DispHTMLStyleSheetRulesCollection, &IID_IHTMLStyleSheetRulesCollection, "[object]");
    IHTMLStyleSheetRulesCollection_Release(col);

    href = (void*)0xdeadbeef;
    hres = IHTMLStyleSheet_get_href(stylesheet, &href);
    ok(hres == S_OK, "get_href failed: %08x\n", hres);
    ok(href == ((void*)0), "got href != NULL\n");
    SysFreeString(href);

    test_stylesheet_csstext(stylesheet, ".body {", FALSE);
    set_stylesheet_csstext(stylesheet, ".div { margin-right: 1px; }\n.body { margin-right: 2px; }", TRUE);
    test_stylesheet_csstext(stylesheet, ".div {", TRUE);
    set_stylesheet_csstext(stylesheet, "", FALSE);
    test_stylesheet_csstext(stylesheet, ((void*)0), FALSE);
    set_stylesheet_csstext(stylesheet, ".div { margin-right: 1px; }", FALSE);
    test_stylesheet_csstext(stylesheet, ".div {", FALSE);

    IHTMLStyleSheet_Release(stylesheet);
}
