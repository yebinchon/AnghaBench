
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLLabelElement ;
typedef int IHTMLElement ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 int IHTMLLabelElement_Release (int *) ;
 scalar_t__ IHTMLLabelElement_get_htmlFor (int *,int **) ;
 scalar_t__ IHTMLLabelElement_put_htmlFor (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int * a2bstr (char*) ;
 int * get_label_iface (int *) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp_wa (int *,char*) ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_label_elem(IHTMLElement *elem)
{
    IHTMLLabelElement *label;
    BSTR str;
    HRESULT hres;

    label = get_label_iface((IUnknown*)elem);

    str = ((void*)0);
    hres = IHTMLLabelElement_get_htmlFor(label, &str);
    ok(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    ok(!strcmp_wa(str, "in"), "htmlFor = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = a2bstr("");
    hres = IHTMLLabelElement_put_htmlFor(label, str);
    ok(hres == S_OK, "put_htmlFor failed: %08x\n", hres);
    SysFreeString(str);

    str = (void*)0xdeadbeef;
    hres = IHTMLLabelElement_get_htmlFor(label, &str);
    ok(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    ok(!strcmp_wa(str, ""), "htmlFor = %s\n", wine_dbgstr_w(str));

    str = a2bstr("abc");
    hres = IHTMLLabelElement_put_htmlFor(label, str);
    ok(hres == S_OK, "put_htmlFor failed: %08x\n", hres);
    SysFreeString(str);

    str = ((void*)0);
    hres = IHTMLLabelElement_get_htmlFor(label, &str);
    ok(hres == S_OK, "get_htmlFor failed: %08x\n", hres);
    ok(!strcmp_wa(str, "abc"), "htmlFor = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    IHTMLLabelElement_Release(label);
}
