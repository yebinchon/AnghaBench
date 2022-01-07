
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int MSG ;
typedef int IUnknown ;
typedef int IPersistMoniker ;
typedef int IMoniker ;
typedef int IHTMLElement ;
typedef int IConnectionPointContainer ;
typedef int IConnectionPoint ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLView ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ CreateBindCtx (int ,int **) ;
 int DispatchMessageA (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ GetMessageA (int *,int *,int ,int ) ;
 int GetModuleFileNameW (int *,char*,scalar_t__) ;
 int HTMLEvents ;
 int IBindCtx_Release (int *) ;
 scalar_t__ IConnectionPointContainer_FindConnectionPoint (int *,int *,int **) ;
 int IConnectionPointContainer_Release (int *) ;
 scalar_t__ IConnectionPoint_Advise (int *,int *,int *) ;
 int IConnectionPoint_Release (int *) ;
 int IHTMLDocument2_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_body (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 scalar_t__ IHTMLElement_get_outerHTML (int *,int *) ;
 int IID_IConnectionPointContainer ;
 int IID_IDispatch ;
 int IID_IHTMLDocument2 ;
 int IID_IPersistMoniker ;
 int IMoniker_Release (int *) ;
 scalar_t__ IPersistMoniker_Load (int *,int ,int *,int *,int ) ;
 scalar_t__ IPersistMoniker_QueryInterface (int *,int *,void**) ;
 int IPersistMoniker_Release (int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int TRUE ;
 int TranslateMessage (int *) ;
 int * html_doc ;
 int html_src_compare (int ,int ) ;
 int loaded ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int lstrlenW (char*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateURLMoniker (int *,char*,int **) ;
 int win_skip (char*) ;
 scalar_t__ wine_dbgstr_w (int ) ;
 int xmlview_html ;

__attribute__((used)) static void test_Load(void)
{
    static const WCHAR xmlview_xmlW[] = {'/','x','m','l','/','x','m','l','v','i','e','w','.','x','m','l',0};
    static const WCHAR res[] = {'r','e','s',':','/','/',0};

    WCHAR buf[1024];
    IPersistMoniker *pers_mon;
    IConnectionPointContainer *cpc;
    IConnectionPoint *cp;
    IMoniker *mon;
    IBindCtx *bctx;
    IHTMLElement *elem;
    HRESULT hres;
    MSG msg;
    BSTR source;

    lstrcpyW(buf, res);
    GetModuleFileNameW(((void*)0), buf+lstrlenW(buf), ARRAY_SIZE(buf)-ARRAY_SIZE(res));
    lstrcatW(buf, xmlview_xmlW);

    if(!pCreateURLMoniker) {
        win_skip("CreateURLMoniker not available\n");
        return;
    }

    hres = CoCreateInstance(&CLSID_XMLView, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IPersistMoniker, (void**)&pers_mon);
    if(FAILED(hres)) {
        win_skip("Failed to create XMLView instance\n");
        return;
    }
    ok(hres == S_OK, "CoCreateInstance returned %x, expected S_OK\n", hres);

    hres = IPersistMoniker_QueryInterface(pers_mon, &IID_IHTMLDocument2, (void**)&html_doc);
    ok(hres == S_OK, "QueryInterface(HTMLDocument2) returned %x, expected S_OK\n", hres);
    hres = IPersistMoniker_QueryInterface(pers_mon, &IID_IConnectionPointContainer, (void**)&cpc);
    ok(hres == S_OK, "QueryInterface(IConnectionPointContainer) returned %x, expected S_OK\n", hres);
    hres = IConnectionPointContainer_FindConnectionPoint(cpc, &IID_IDispatch, &cp);
    ok(hres == S_OK, "FindConnectionPoint returned %x, expected S_OK\n", hres);
    hres = IConnectionPoint_Advise(cp, (IUnknown*)&HTMLEvents, ((void*)0));
    ok(hres == S_OK, "Advise returned %x, expected S_OK\n", hres);
    IConnectionPoint_Release(cp);
    IConnectionPointContainer_Release(cpc);

    hres = CreateBindCtx(0, &bctx);
    ok(hres == S_OK, "CreateBindCtx returned %x, expected S_OK\n", hres);
    hres = pCreateURLMoniker(((void*)0), buf, &mon);
    ok(hres == S_OK, "CreateUrlMoniker returned %x, expected S_OK\n", hres);
    loaded = FALSE;
    hres = IPersistMoniker_Load(pers_mon, TRUE, mon, bctx, 0);
    ok(hres == S_OK, "Load returned %x, expected S_OK\n", hres);
    IBindCtx_Release(bctx);
    IMoniker_Release(mon);

    while(!loaded && GetMessageA(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }

    hres = IHTMLDocument2_get_body(html_doc, &elem);
    ok(hres == S_OK, "get_body returned %x, expected S_OK\n", hres);
    hres = IHTMLElement_get_outerHTML(elem, &source);
    ok(hres == S_OK, "get_outerHTML returned %x, expected S_OK\n", hres);
    ok(!html_src_compare(source, xmlview_html), "Incorrect HTML source: %s\n", wine_dbgstr_w(source));
    IHTMLElement_Release(elem);
    SysFreeString(source);

    IHTMLDocument2_Release(html_doc);
    html_doc = ((void*)0);
    IPersistMoniker_Release(pers_mon);
}
