
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int url ;
struct location_test {int name; int url; } ;
typedef int WCHAR ;
typedef int IPersistMoniker ;
typedef int IMoniker ;
typedef int IHTMLLocation ;
typedef int IHTMLDocument6 ;
typedef int IHTMLDocument2 ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_HTMLDocument ;
 int CP_ACP ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ CreateBindCtx (int ,int **) ;
 scalar_t__ CreateURLMoniker (int *,int *,int **) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IBindCtx_Release (int *) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_location (int *,int **) ;
 int IHTMLDocument6_Release (int *) ;
 int IHTMLLocation_Release (int *) ;
 int IID_IHTMLDocument2 ;
 int IID_IHTMLDocument6 ;
 int IID_IPersistMoniker ;
 int IMoniker_Release (int *) ;
 int INTERNET_MAX_URL_LENGTH ;
 scalar_t__ IPersistMoniker_Load (int *,int ,int *,int *,int) ;
 int IPersistMoniker_Release (int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 int ok (int,char*,int ,scalar_t__) ;
 int test_hash (int *,struct location_test const*) ;
 int test_host (int *,struct location_test const*) ;
 int test_hostname (int *,int *,struct location_test const*) ;
 int test_href (int *,struct location_test const*) ;
 int test_pathname (int *,struct location_test const*) ;
 int test_port (int *,struct location_test const*) ;
 int test_protocol (int *,struct location_test const*) ;
 int test_search (int *,struct location_test const*) ;
 int win_skip (char*,int ) ;

__attribute__((used)) static void perform_test(const struct location_test* test)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    HRESULT hres;
    IBindCtx *bc;
    IMoniker *url_mon;
    IPersistMoniker *persist_mon;
    IHTMLDocument2 *doc;
    IHTMLDocument6 *doc6;
    IHTMLLocation *location;

    hres = CreateBindCtx(0, &bc);
    ok(hres == S_OK, "%s: CreateBindCtx failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres))
        return;

    MultiByteToWideChar(CP_ACP, 0, test->url, -1, url, sizeof(url)/sizeof(WCHAR));
    hres = CreateURLMoniker(((void*)0), url, &url_mon);
    ok(hres == S_OK, "%s: CreateURLMoniker failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres)){
        IBindCtx_Release(bc);
        return;
    }

    hres = CoCreateInstance(&CLSID_HTMLDocument, ((void*)0),
            CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER, &IID_IHTMLDocument2,
            (void**)&doc);
    ok(hres == S_OK, "%s: CoCreateInstance failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres)){
        IMoniker_Release(url_mon);
        IBindCtx_Release(bc);
        return;
    }

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument6, (void**)&doc6);
    if(hres == S_OK){
        IHTMLDocument6_Release(doc6);
    }else{
        win_skip("%s: Could not get IHTMLDocument6, probably too old IE. Requires IE 8+\n", test->name);
        IMoniker_Release(url_mon);
        IBindCtx_Release(bc);
        return;
    }

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistMoniker,
            (void**)&persist_mon);
    ok(hres == S_OK, "%s: IHTMlDocument2_QueryInterface failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres)){
        IHTMLDocument2_Release(doc);
        IMoniker_Release(url_mon);
        IBindCtx_Release(bc);
        return;
    }

    hres = IPersistMoniker_Load(persist_mon, FALSE, url_mon, bc,
            STGM_SHARE_EXCLUSIVE | STGM_READWRITE);
    ok(hres == S_OK, "%s: IPersistMoniker_Load failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres)){
        IPersistMoniker_Release(persist_mon);
        IHTMLDocument2_Release(doc);
        IMoniker_Release(url_mon);
        IBindCtx_Release(bc);
        return;
    }

    hres = IHTMLDocument2_get_location(doc, &location);
    ok(hres == S_OK, "%s: IHTMLDocument2_get_location failed: 0x%08x\n", test->name, hres);
    if(FAILED(hres)){
        IPersistMoniker_Release(persist_mon);
        IHTMLDocument2_Release(doc);
        IMoniker_Release(url_mon);
        IBindCtx_Release(bc);
        return;
    }

    test_href(location, test);
    test_protocol(location, test);
    test_host(location, test);
    test_hostname(location, doc, test);
    test_port(location, test);
    test_pathname(location, test);
    test_search(location, test);
    test_hash(location, test);

    IHTMLLocation_Release(location);
    IPersistMoniker_Release(persist_mon);
    IHTMLDocument2_Release(doc);
    IMoniker_Release(url_mon);
    IBindCtx_Release(bc);
}
