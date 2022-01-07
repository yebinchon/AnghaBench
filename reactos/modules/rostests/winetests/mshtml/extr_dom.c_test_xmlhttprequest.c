
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IUnknown ;
typedef int IHTMLXMLHttpRequestFactory ;
typedef int IHTMLXMLHttpRequest ;
typedef int IHTMLWindow5 ;
typedef scalar_t__ HRESULT ;


 int DIID_DispHTMLXMLHttpRequest ;
 scalar_t__ IDispatch_QueryInterface (int ,int *,void**) ;
 scalar_t__ IHTMLWindow5_get_XMLHttpRequest (int *,int *) ;
 int IHTMLXMLHttpRequestFactory_Release (int *) ;
 scalar_t__ IHTMLXMLHttpRequestFactory_create (int *,int **) ;
 int IHTMLXMLHttpRequest_Release (int *) ;
 int IID_IHTMLXMLHttpRequestFactory ;
 scalar_t__ S_OK ;
 scalar_t__ VT_DISPATCH ;
 int V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int debugstr_variant (int *) ;
 int ok (int,char*,...) ;
 int test_disp (int *,int *,char*) ;

__attribute__((used)) static void test_xmlhttprequest(IHTMLWindow5 *window)
{
    HRESULT hres;
    VARIANT var;
    IHTMLXMLHttpRequestFactory *factory;
    IHTMLXMLHttpRequest *xml;

    hres = IHTMLWindow5_get_XMLHttpRequest(window, &var);
    ok(hres == S_OK, "get_XMLHttpRequest failed: %08x\n", hres);
    ok(V_VT(&var) == VT_DISPATCH, "expect VT_DISPATCH, got %s\n", debugstr_variant(&var));

    factory = ((void*)0);
    hres = IDispatch_QueryInterface(V_DISPATCH(&var), &IID_IHTMLXMLHttpRequestFactory, (void**)&factory);
    ok(hres == S_OK, "QueryInterface(&IID_IHTMLXMLHttpRequestFactory) failed: %08x\n", hres);
    ok(factory != ((void*)0), "factory == NULL\n");

    xml = ((void*)0);
    hres = IHTMLXMLHttpRequestFactory_create(factory, &xml);
    ok(hres == S_OK, "create failed: %08x\n", hres);
    ok(xml != ((void*)0), "xml == NULL\n");
    test_disp((IUnknown*)xml, &DIID_DispHTMLXMLHttpRequest, "[object]");

    IHTMLXMLHttpRequest_Release(xml);
    IHTMLXMLHttpRequestFactory_Release(factory);
    VariantClear(&var);
}
