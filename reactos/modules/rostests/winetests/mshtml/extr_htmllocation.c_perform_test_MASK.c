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
typedef  int /*<<< orphan*/  url ;
struct location_test {int /*<<< orphan*/  name; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHTMLLocation ;
typedef  int /*<<< orphan*/  IHTMLDocument6 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IHTMLDocument6 ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct location_test const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC24(const struct location_test* test)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    HRESULT hres;
    IBindCtx *bc;
    IMoniker *url_mon;
    IPersistMoniker *persist_mon;
    IHTMLDocument2 *doc;
    IHTMLDocument6 *doc6;
    IHTMLLocation *location;

    hres = FUNC1(0, &bc);
    FUNC14(hres == S_OK, "%s: CreateBindCtx failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres))
        return;

    FUNC13(CP_ACP, 0, test->url, -1, url, sizeof(url)/sizeof(WCHAR));
    hres = FUNC2(NULL, url, &url_mon);
    FUNC14(hres == S_OK, "%s: CreateURLMoniker failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres)){
        FUNC4(bc);
        return;
    }

    hres = FUNC0(&CLSID_HTMLDocument, NULL,
            CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER, &IID_IHTMLDocument2,
            (void**)&doc);
    FUNC14(hres == S_OK, "%s: CoCreateInstance failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres)){
        FUNC10(url_mon);
        FUNC4(bc);
        return;
    }

    hres = FUNC5(doc, &IID_IHTMLDocument6, (void**)&doc6);
    if(hres == S_OK){
        FUNC8(doc6);
    }else{
        FUNC23("%s: Could not get IHTMLDocument6, probably too old IE. Requires IE 8+\n", test->name);
        FUNC10(url_mon);
        FUNC4(bc);
        return;
    }

    hres = FUNC5(doc, &IID_IPersistMoniker,
            (void**)&persist_mon);
    FUNC14(hres == S_OK, "%s: IHTMlDocument2_QueryInterface failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres)){
        FUNC6(doc);
        FUNC10(url_mon);
        FUNC4(bc);
        return;
    }

    hres = FUNC11(persist_mon, FALSE, url_mon, bc,
            STGM_SHARE_EXCLUSIVE | STGM_READWRITE);
    FUNC14(hres == S_OK, "%s: IPersistMoniker_Load failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres)){
        FUNC12(persist_mon);
        FUNC6(doc);
        FUNC10(url_mon);
        FUNC4(bc);
        return;
    }

    hres = FUNC7(doc, &location);
    FUNC14(hres == S_OK, "%s: IHTMLDocument2_get_location failed: 0x%08x\n", test->name, hres);
    if(FUNC3(hres)){
        FUNC12(persist_mon);
        FUNC6(doc);
        FUNC10(url_mon);
        FUNC4(bc);
        return;
    }

    FUNC18(location, test);
    FUNC21(location, test);
    FUNC16(location, test);
    FUNC17(location, doc, test);
    FUNC20(location, test);
    FUNC19(location, test);
    FUNC22(location, test);
    FUNC15(location, test);

    FUNC9(location);
    FUNC12(persist_mon);
    FUNC6(doc);
    FUNC10(url_mon);
    FUNC4(bc);
}