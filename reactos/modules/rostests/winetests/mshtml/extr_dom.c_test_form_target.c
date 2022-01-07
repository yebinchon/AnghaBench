
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLFormElement ;
typedef int HRESULT ;
typedef int BSTR ;


 int IHTMLFormElement_Release (int *) ;
 int IHTMLFormElement_get_target (int *,int *) ;
 int IHTMLFormElement_put_target (int *,int ) ;
 int S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int * get_form_iface (int *) ;
 int ok (int,char*,char const*,...) ;
 int strcmp_wa (int ,char const*) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_form_target(IUnknown *unk)
{
    IHTMLFormElement *form = get_form_iface(unk);
    HRESULT hres;
    BSTR str;
    static const char target[] = "_blank";

    str = a2bstr(target);
    hres = IHTMLFormElement_put_target(form, str);
    ok(hres == S_OK, "put_target(%s) failed: %08x\n", target, hres);
    SysFreeString(str);

    hres = IHTMLFormElement_get_target(form, &str);
    ok(hres == S_OK, "get_target failed: %08x\n", hres);
    ok(!strcmp_wa(str, target), "Expected %s, got %s\n", target, wine_dbgstr_w(str));
    SysFreeString(str);

    IHTMLFormElement_Release(form);
}
