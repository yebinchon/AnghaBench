
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IOmHistory ;
typedef int IHTMLWindow2 ;
typedef scalar_t__ HRESULT ;


 int DIID_DispHTMLHistory ;
 scalar_t__ IHTMLWindow2_get_history (int *,int **) ;
 int IID_IOmHistory ;
 int IOmHistory_Release (int *) ;
 scalar_t__ S_OK ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_disp2 (int *,int *,int *,char*) ;

__attribute__((used)) static void test_history(IHTMLWindow2 *window)
{
    IOmHistory *history, *history2;
    HRESULT hres;

    history = ((void*)0);
    hres = IHTMLWindow2_get_history(window, &history);
    ok(hres == S_OK, "get_history failed: %08x\n", hres);
    ok(history != ((void*)0), "history = NULL\n");

    test_disp2((IUnknown*)history, &DIID_DispHTMLHistory, &IID_IOmHistory, "[object]");

    history2 = ((void*)0);
    hres = IHTMLWindow2_get_history(window, &history2);
    ok(hres == S_OK, "get_history failed: %08x\n", hres);
    ok(history2 != ((void*)0), "history2 = NULL\n");
    ok(iface_cmp((IUnknown*)history, (IUnknown*)history2), "history != history2\n");

    IOmHistory_Release(history2);
    IOmHistory_Release(history);
}
