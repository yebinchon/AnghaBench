
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 int IHTMLWindow2_Release (int *) ;
 scalar_t__ IHTMLWindow2_execScript (int *,int ,int ,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int VariantClear (int *) ;
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_exec_script(IHTMLDocument2 *doc, const char *codea, const char *langa)
{
    IHTMLWindow2 *window;
    BSTR code, lang;
    VARIANT v;
    HRESULT hres;

    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    code = a2bstr(codea);
    lang = a2bstr(langa);

    hres = IHTMLWindow2_execScript(window, code, lang, &v);
    ok(hres == S_OK, "execScript failed: %08x\n", hres);
    SysFreeString(lang);
    VariantClear(&v);

    IHTMLWindow2_Release(window);
}
