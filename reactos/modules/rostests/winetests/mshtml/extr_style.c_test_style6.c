
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLStyle6 ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 scalar_t__ IHTMLStyle6_get_boxSizing (int *,int **) ;
 scalar_t__ IHTMLStyle6_get_outline (int *,int **) ;
 scalar_t__ IHTMLStyle6_put_boxSizing (int *,int *) ;
 scalar_t__ IHTMLStyle6_put_outline (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int * a2bstr (char*) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp_wa (int *,char*) ;
 scalar_t__ wine_dbgstr_w (int *) ;
 int wstr_contains (int *,char*) ;

__attribute__((used)) static void test_style6(IHTMLStyle6 *style)
{
    BSTR str;
    HRESULT hres;

    str = (void*)0xdeadbeef;
    hres = IHTMLStyle6_get_outline(style, &str);
    ok(hres == S_OK, "get_outline failed: %08x\n", hres);
    ok(str && !*str, "outline = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = a2bstr("1px");
    hres = IHTMLStyle6_put_outline(style, str);
    ok(hres == S_OK, "put_outline failed: %08x\n", hres);
    SysFreeString(str);

    str = (void*)0xdeadbeef;
    hres = IHTMLStyle6_get_outline(style, &str);
    ok(hres == S_OK, "get_outline failed: %08x\n", hres);
    ok(wstr_contains(str, "1px"), "outline = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = (void*)0xdeadbeef;
    hres = IHTMLStyle6_get_boxSizing(style, &str);
    ok(hres == S_OK, "get_boxSizing failed: %08x\n", hres);
    ok(!str, "boxSizing = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = a2bstr("border-box");
    hres = IHTMLStyle6_put_boxSizing(style, str);
    ok(hres == S_OK, "put_boxSizing failed: %08x\n", hres);
    SysFreeString(str);

    str = ((void*)0);
    hres = IHTMLStyle6_get_boxSizing(style, &str);
    ok(hres == S_OK, "get_boxSizing failed: %08x\n", hres);
    ok(!strcmp_wa(str, "border-box"), "boxSizing = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);
}
