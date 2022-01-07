
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IServiceProvider ;
typedef int IHlinkFrame ;
typedef int IHTMLWindow2 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ E_NOINTERFACE ;
 int HlinkFrame ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 scalar_t__ IHTMLWindow2_QueryInterface (int *,int *,void**) ;
 int IHTMLWindow2_Release (int *) ;
 int IHlinkFrame_Release (int *) ;
 int IID_IHTMLWindow2 ;
 int IID_IHlinkFrame ;
 int IID_IServiceProvider ;
 scalar_t__ IServiceProvider_QueryService (int *,int *,int *,void**) ;
 int IServiceProvider_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_QueryService(IHTMLDocument2 *doc, BOOL success)
{
    IHTMLWindow2 *window, *sp_window;
    IServiceProvider *sp;
    IHlinkFrame *hf;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IServiceProvider, (void**)&sp);
    ok(hres == S_OK, "QueryService returned %08x\n", hres);

    hres = IServiceProvider_QueryService(sp, &IID_IHlinkFrame, &IID_IHlinkFrame, (void**)&hf);
    if(!success) {
        ok(hres == E_NOINTERFACE, "QueryService returned %08x, expected E_NOINTERFACE\n", hres);
        IServiceProvider_Release(sp);
        return;
    }

    ok(hres == S_OK, "QueryService(IID_IHlinkFrame) failed: %08x\n", hres);
    ok(hf == &HlinkFrame, "hf != HlinkFrame\n");
    IHlinkFrame_Release(hf);

    IServiceProvider_Release(sp);

    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    hres = IHTMLWindow2_QueryInterface(window, &IID_IServiceProvider, (void**)&sp);
    ok(hres == S_OK, "Could not get IServiceProvider iface: %08x\n", hres);

    hres = IServiceProvider_QueryService(sp, &IID_IHTMLWindow2, &IID_IHTMLWindow2, (void**)&sp_window);
    ok(hres == S_OK, "QueryService(IID_IHTMLWindow2) failed: %08x\n", hres);

    IHTMLWindow2_Release(sp_window);

    hres = IServiceProvider_QueryService(sp, &IID_IHlinkFrame, &IID_IHlinkFrame, (void**)&hf);
    ok(hres == S_OK, "QueryService(IID_IHlinkFrame) failed: %08x\n", hres);
    ok(hf == &HlinkFrame, "hf != HlinkFrame\n");
    IHlinkFrame_Release(hf);

    IServiceProvider_Release(sp);
    IHTMLWindow2_Release(window);
}
