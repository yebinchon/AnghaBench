
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int ITravelLogClient ;
typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_FAIL ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 scalar_t__ IHTMLWindow2_QueryInterface (int *,int *,void**) ;
 int IHTMLWindow2_Release (int *) ;
 scalar_t__ IHTMLWindow2_get_top (int *,int **) ;
 int IID_ITravelLogClient ;
 scalar_t__ ITravelLogClient_FindWindowByIndex (int *,int ,int **) ;
 int ITravelLogClient_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int no_travellog ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_travellog(IHTMLDocument2 *doc)
{
    ITravelLogClient *travellog_client;
    IHTMLWindow2 *window, *top_window;
    IUnknown *unk;
    HRESULT hres;

    window = ((void*)0);
    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
    ok(window != ((void*)0), "window = NULL\n");

    hres = IHTMLWindow2_get_top(window, &top_window);
    IHTMLWindow2_Release(window);
    ok(hres == S_OK, "get_top failed: %08x\n", hres);

    hres = IHTMLWindow2_QueryInterface(top_window, &IID_ITravelLogClient, (void**)&travellog_client);
    IHTMLWindow2_Release(top_window);
    if(hres == E_NOINTERFACE) {
        win_skip("ITravelLogClient not supported\n");
        no_travellog = TRUE;
        return;
    }
    ok(hres == S_OK, "Could not get ITraveLogClient iface: %08x\n", hres);

    unk = (void*)0xdeadbeef;
    hres = ITravelLogClient_FindWindowByIndex(travellog_client, 0, &unk);
    ok(hres == E_FAIL, "FindWindowByIndex failed: %08x\n", hres);
    ok(!unk, "unk != NULL\n");

    ITravelLogClient_Release(travellog_client);
}
