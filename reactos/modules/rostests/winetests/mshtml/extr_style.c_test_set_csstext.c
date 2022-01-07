
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IHTMLStyle ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLStyle_get_backgroundColor (int *,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_BSTR ;
 int V_BSTR (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp_wa (int ,char*) ;
 int test_style_set_csstext (int *,char*) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_set_csstext(IHTMLStyle *style)
{
    VARIANT v;
    HRESULT hres;

    test_style_set_csstext(style, "background-color: black;");

    hres = IHTMLStyle_get_backgroundColor(style, &v);
    ok(hres == S_OK, "get_backgroundColor: %08x\n", hres);
    ok(V_VT(&v) == VT_BSTR, "type failed: %d\n", V_VT(&v));
    ok(!strcmp_wa(V_BSTR(&v), "black"), "str=%s\n", wine_dbgstr_w(V_BSTR(&v)));
    VariantClear(&v);
}
