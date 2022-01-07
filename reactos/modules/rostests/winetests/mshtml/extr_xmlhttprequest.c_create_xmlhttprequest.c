
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IHTMLXMLHttpRequestFactory ;
typedef int IHTMLWindow5 ;
typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDispatch_QueryInterface (int ,int *,void**) ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 scalar_t__ IHTMLWindow2_QueryInterface (int *,int *,void**) ;
 int IHTMLWindow2_Release (int *) ;
 int IHTMLWindow5_Release (int *) ;
 scalar_t__ IHTMLWindow5_get_XMLHttpRequest (int *,int *) ;
 int IHTMLXMLHttpRequestFactory_Release (int *) ;
 scalar_t__ IHTMLXMLHttpRequestFactory_create (int *,int **) ;
 int IID_IHTMLWindow5 ;
 int IID_IHTMLXMLHttpRequestFactory ;
 scalar_t__ S_OK ;
 scalar_t__ VT_DISPATCH ;
 int V_DISPATCH (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;
 int * xhr ;

__attribute__((used)) static void create_xmlhttprequest(IHTMLDocument2 *doc)
{
    IHTMLWindow2 *window;
    IHTMLWindow5 *window5;
    VARIANT var;
    IHTMLXMLHttpRequestFactory *factory;
    HRESULT hres;

    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
    ok(window != ((void*)0), "window == NULL\n");

    hres = IHTMLWindow2_QueryInterface(window, &IID_IHTMLWindow5, (void**)&window5);
    IHTMLWindow2_Release(window);
    if(FAILED(hres)) {
        win_skip("IHTMLWindow5 not supported\n");
        return;
    }

    VariantInit(&var);
    hres = IHTMLWindow5_get_XMLHttpRequest(window5, &var);
    IHTMLWindow5_Release(window5);
    ok(hres == S_OK, "get_XMLHttpRequest failed: %08x\n", hres);
    ok(V_VT(&var) == VT_DISPATCH, "V_VT(&var) is %08x, expected VT_DISPATCH\n", V_VT(&var));

    hres = IDispatch_QueryInterface(V_DISPATCH(&var), &IID_IHTMLXMLHttpRequestFactory, (void**)&factory);
    VariantClear(&var);
    ok(hres == S_OK, "QueryInterface(IID_IHTMLXMLHttpRequestFactory) failed: %08x\n", hres);
    ok(factory != ((void*)0), "factory == NULL\n");

    hres = IHTMLXMLHttpRequestFactory_create(factory, &xhr);
    IHTMLXMLHttpRequestFactory_Release(factory);
    ok(hres == S_OK, "create failed: %08x\n", hres);
    ok(xhr != ((void*)0), "xhr == NULL\n");
}
