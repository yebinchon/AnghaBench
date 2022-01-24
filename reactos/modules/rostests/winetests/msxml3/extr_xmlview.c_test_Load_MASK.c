#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_XMLView ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  HTMLEvents ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * html_doc ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loaded ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 
 int FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xmlview_html ; 

__attribute__((used)) static void FUNC30(void)
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

    FUNC24(buf, res);
    FUNC6(NULL, buf+FUNC25(buf), FUNC0(buf)-FUNC0(res));
    FUNC23(buf, xmlview_xmlW);

    if(!&pCreateURLMoniker) {
        FUNC28("CreateURLMoniker not available\n");
        return;
    }

    hres = FUNC1(&CLSID_XMLView, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IPersistMoniker, (void**)&pers_mon);
    if(FUNC4(hres)) {
        FUNC28("Failed to create XMLView instance\n");
        return;
    }
    FUNC26(hres == S_OK, "CoCreateInstance returned %x, expected S_OK\n", hres);

    hres = FUNC18(pers_mon, &IID_IHTMLDocument2, (void**)&html_doc);
    FUNC26(hres == S_OK, "QueryInterface(HTMLDocument2) returned %x, expected S_OK\n", hres);
    hres = FUNC18(pers_mon, &IID_IConnectionPointContainer, (void**)&cpc);
    FUNC26(hres == S_OK, "QueryInterface(IConnectionPointContainer) returned %x, expected S_OK\n", hres);
    hres = FUNC8(cpc, &IID_IDispatch, &cp);
    FUNC26(hres == S_OK, "FindConnectionPoint returned %x, expected S_OK\n", hres);
    hres = FUNC10(cp, (IUnknown*)&HTMLEvents, NULL);
    FUNC26(hres == S_OK, "Advise returned %x, expected S_OK\n", hres);
    FUNC11(cp);
    FUNC9(cpc);

    hres = FUNC2(0, &bctx);
    FUNC26(hres == S_OK, "CreateBindCtx returned %x, expected S_OK\n", hres);
    hres = FUNC27(NULL, buf, &mon);
    FUNC26(hres == S_OK, "CreateUrlMoniker returned %x, expected S_OK\n", hres);
    loaded = FALSE;
    hres = FUNC17(pers_mon, TRUE, mon, bctx, 0);
    FUNC26(hres == S_OK, "Load returned %x, expected S_OK\n", hres);
    FUNC7(bctx);
    FUNC16(mon);

    while(!loaded && FUNC5(&msg, NULL, 0, 0)) {
        FUNC21(&msg);
        FUNC3(&msg);
    }

    hres = FUNC13(html_doc, &elem);
    FUNC26(hres == S_OK, "get_body returned %x, expected S_OK\n", hres);
    hres = FUNC15(elem, &source);
    FUNC26(hres == S_OK, "get_outerHTML returned %x, expected S_OK\n", hres);
    FUNC26(!FUNC22(source, xmlview_html), "Incorrect HTML source: %s\n", FUNC29(source));
    FUNC14(elem);
    FUNC20(source);

    FUNC12(html_doc);
    html_doc = NULL;
    FUNC19(pers_mon);
}