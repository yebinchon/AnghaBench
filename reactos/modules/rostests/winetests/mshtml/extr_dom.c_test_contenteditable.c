
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLElement3 ;
typedef char* HRESULT ;
typedef int BSTR ;


 int IHTMLElement3_Release (int *) ;
 char* IHTMLElement3_get_contentEditable (int *,int *) ;
 char* IHTMLElement3_put_contentEditable (int *,int ) ;
 char* S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char*) ;
 int * get_elem3_iface (int *) ;
 int ok (int,char*,char*,...) ;
 int strcmp_wa (int ,char*) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_contenteditable(IUnknown *unk)
{
    IHTMLElement3 *elem3 = get_elem3_iface(unk);
    HRESULT hres;
    BSTR str, strDefault;

    hres = IHTMLElement3_get_contentEditable(elem3, &strDefault);
    ok(hres == S_OK, "get_contentEditable failed: 0x%08x\n", hres);

    str = a2bstr("true");
    hres = IHTMLElement3_put_contentEditable(elem3, str);
    ok(hres == S_OK, "put_contentEditable(%s) failed: 0x%08x\n", wine_dbgstr_w(str), hres);
    SysFreeString(str);
    hres = IHTMLElement3_get_contentEditable(elem3, &str);
    ok(hres == S_OK, "get_contentEditable failed: 0x%08x\n", hres);
    ok(!strcmp_wa(str, "true"), "Got %s, expected %s\n", wine_dbgstr_w(str), "true");


    hres = IHTMLElement3_put_contentEditable(elem3, strDefault);
    ok(hres == S_OK, "put_contentEditable(%s) failed: 0x%08x\n", wine_dbgstr_w(strDefault), hres);
    SysFreeString(strDefault);

    IHTMLElement3_Release(elem3);
}
