
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urlA ;
typedef int url ;
typedef int WCHAR ;
typedef int MSG ;
typedef int IUnknown ;
typedef int IPersistMoniker ;
typedef int IMoniker ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int CHECK_CALLED (int ) ;
 int CP_ACP ;
 scalar_t__ CreateURLMoniker (int *,int *,int **) ;
 int DispatchMessageW (int *) ;
 int FALSE ;
 scalar_t__ GetMessageW (int *,int *,int ,int ) ;
 int GetModuleFileNameA (int *,char*,int) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 int IID_IPersistMoniker ;
 int IID_IPropertyNotifySink ;
 int IMoniker_Release (int *) ;
 int INTERNET_MAX_URL_LENGTH ;
 scalar_t__ IPersistMoniker_Load (int *,int ,int *,int *,int ) ;
 int IPersistMoniker_Release (int *) ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int PropertyNotifySink ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int TranslateMessage (int *) ;
 int called_external_success ;
 int * create_document () ;
 int do_advise (int *,int *,int *) ;
 int external_success ;
 int lstrcatA (char*,char const*) ;
 int lstrcpyA (char*,char const*) ;
 int lstrlenA (char const*) ;
 int ok (int,char*,scalar_t__) ;
 int set_client_site (int *,int ) ;
 int trace (char*,char const*) ;

__attribute__((used)) static void run_js_script(const char *test_name)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    char urlA[INTERNET_MAX_URL_LENGTH];
    IPersistMoniker *persist;
    IHTMLDocument2 *doc;
    IMoniker *mon;
    MSG msg;
    HRESULT hres;

    static const char res[] = "res://";

    trace("running %s...\n", test_name);

    doc = create_document();
    if(!doc)
        return;

    set_client_site(doc, TRUE);
    do_advise(doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    lstrcpyA(urlA, res);
    GetModuleFileNameA(((void*)0), urlA + lstrlenA(res), sizeof(urlA) - lstrlenA(res));
    lstrcatA(urlA, "/");
    lstrcatA(urlA, test_name);
    MultiByteToWideChar(CP_ACP, 0, urlA, -1, url, sizeof(url)/sizeof(WCHAR));

    hres = CreateURLMoniker(((void*)0), url, &mon);
    ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistMoniker, (void**)&persist);
    ok(hres == S_OK, "Could not get IPersistMoniker iface: %08x\n", hres);

    hres = IPersistMoniker_Load(persist, FALSE, mon, ((void*)0), 0);
    ok(hres == S_OK, "Load failed: %08x\n", hres);

    IMoniker_Release(mon);
    IPersistMoniker_Release(persist);

    SET_EXPECT(external_success);

    while(!called_external_success && GetMessageW(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }

    CHECK_CALLED(external_success);

    set_client_site(doc, FALSE);
    IHTMLDocument2_Release(doc);
}
