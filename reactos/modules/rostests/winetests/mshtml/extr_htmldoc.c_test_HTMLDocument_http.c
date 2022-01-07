
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 int DWL_EXPECT_HISTUPDATE ;
 int DWL_EXTERNAL ;
 int DWL_HTTP ;
 scalar_t__ FALSE ;
 scalar_t__ IMoniker_Release (int *) ;
 int IOleDocumentView_Release (int *) ;
 int LD_DOLOAD ;
 int OLECMDF_SUPPORTED ;
 int S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 int * create_document () ;
 int * doc_unk ;
 int http_urlW ;
 int init_test (int ) ;
 scalar_t__ ipsex ;
 scalar_t__ is_ie_hardened () ;
 void* nav_serv_url ;
 void* nav_url ;
 int ok (int,char*,scalar_t__) ;
 int * prev_url ;
 int release_document (int *) ;
 scalar_t__ support_wbapp ;
 int test_Close (int *,scalar_t__) ;
 int test_ConnectionPointContainer (int *) ;
 int test_GetCurMoniker (int *,int *,int *,scalar_t__) ;
 int test_InPlaceDeactivate (int *,scalar_t__) ;
 int test_IsDirty (int *,int ) ;
 int test_MSHTML_QueryStatus (int *,int ) ;
 int test_Navigate (int *) ;
 int test_OmHistory (int *) ;
 int test_Persist (int *,int *) ;
 int test_ViewAdviseSink (int *) ;
 int test_binding_ui (int *) ;
 int test_cookies (int *) ;
 int test_download (int ) ;
 int test_load_history (int *) ;
 int test_open_window (int *,scalar_t__) ;
 int test_put_hash (int *,char*) ;
 int test_put_href (int *,scalar_t__,char*,char*,scalar_t__,scalar_t__,int ) ;
 int test_refresh (int *) ;
 int test_travellog (int *) ;
 int test_window_close (int *) ;
 int trace (char*,char*) ;
 int * view ;
 int win_skip (char*) ;
 int winetest_interactive ;

__attribute__((used)) static void test_HTMLDocument_http(BOOL with_wbapp)
{
    IMoniker *http_mon;
    IHTMLDocument2 *doc;
    ULONG ref;
    HRESULT hres;

    trace("Testing HTMLDocument (http%s)...\n", with_wbapp ? " with IWebBrowserApp" : "");

    support_wbapp = with_wbapp;

    if(!winetest_interactive && is_ie_hardened()) {
        win_skip("IE running in Enhanced Security Configuration\n");
        return;
    }

    init_test(LD_DOLOAD);
    ipsex = TRUE;

    doc = create_document();
    doc_unk = (IUnknown*)doc;

    hres = CreateURLMoniker(((void*)0), http_urlW, &http_mon);
    ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    test_ViewAdviseSink(doc);
    test_ConnectionPointContainer(doc);
    test_GetCurMoniker((IUnknown*)doc, ((void*)0), ((void*)0), FALSE);
    test_Persist(doc, http_mon);
    test_Navigate(doc);
    test_download(DWL_HTTP);
    test_cookies(doc);
    test_IsDirty(doc, S_FALSE);
    test_MSHTML_QueryStatus(doc, OLECMDF_SUPPORTED);
    test_GetCurMoniker((IUnknown*)doc, http_mon, ((void*)0), FALSE);
    test_travellog(doc);
    test_binding_ui((IUnknown*)doc);

    nav_url = nav_serv_url = "http://test.winehq.org/tests/winehq_snapshot/";
    if(support_wbapp) {
        test_put_href(doc, FALSE, "#test", "http://test.winehq.org/tests/winehq_snapshot/#test", FALSE, TRUE, 0);
        test_put_hash(doc, "#hash_test");
        test_travellog(doc);
        test_refresh(doc);
    }
    test_put_href(doc, FALSE, ((void*)0), "javascript:external%20&&undefined", TRUE, FALSE, 0);
    test_put_href(doc, FALSE, ((void*)0), "about:blank", FALSE, FALSE, support_wbapp ? DWL_EXPECT_HISTUPDATE : 0);
    test_put_href(doc, TRUE, ((void*)0), "about:replace", FALSE, FALSE, 0);
    if(support_wbapp) {
        test_load_history(doc);
        test_OmHistory(doc);
        test_put_href(doc, FALSE, ((void*)0), "about:blank", FALSE, FALSE, support_wbapp ? DWL_EXPECT_HISTUPDATE : 0);
    }

    prev_url = nav_serv_url;
    test_open_window(doc, TRUE);
    if(!support_wbapp)
        test_open_window(doc, FALSE);
    if(support_wbapp) {
        test_put_href(doc, FALSE, ((void*)0), "http://test.winehq.org/tests/file.winetest", FALSE, FALSE, DWL_EXTERNAL);
        test_window_close(doc);
    }

    test_InPlaceDeactivate(doc, TRUE);
    test_Close(doc, FALSE);
    test_IsDirty(doc, S_FALSE);
    test_GetCurMoniker((IUnknown*)doc, ((void*)0), prev_url, support_wbapp);

    if(view)
        IOleDocumentView_Release(view);
    view = ((void*)0);

    release_document(doc);

    ref = IMoniker_Release(http_mon);
    ok(!ref, "ref=%d, expected 0\n", ref);
}
