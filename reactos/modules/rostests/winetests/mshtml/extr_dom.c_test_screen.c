
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int top; int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;
typedef int IUnknown ;
typedef int IHTMLWindow2 ;
typedef int IHTMLScreen ;
typedef int IDispatchEx ;
typedef int HRESULT ;
typedef int HDC ;


 int BITSPIXEL ;
 int CreateICA (char*,int *,int *,int *) ;
 int DIID_DispHTMLScreen ;
 int DeleteObject (int ) ;
 int E_NOINTERFACE ;
 int GetDeviceCaps (int ,int ) ;
 int HORZRES ;
 int IDispatchEx_Release (int *) ;
 int IHTMLScreen_QueryInterface (int *,int *,void**) ;
 int IHTMLScreen_Release (int *) ;
 int IHTMLScreen_get_availHeight (int *,int*) ;
 int IHTMLScreen_get_availWidth (int *,int*) ;
 int IHTMLScreen_get_colorDepth (int *,int*) ;
 int IHTMLScreen_get_height (int *,int*) ;
 int IHTMLScreen_get_width (int *,int*) ;
 int IHTMLWindow2_get_screen (int *,int **) ;
 int IID_IDispatchEx ;
 int SPI_GETWORKAREA ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SystemParametersInfoW (int ,int ,TYPE_1__*,int ) ;
 int VERTRES ;
 scalar_t__ broken (int) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_disp (int *,int *,char*) ;

__attribute__((used)) static void test_screen(IHTMLWindow2 *window)
{
    IHTMLScreen *screen, *screen2;
    IDispatchEx *dispex;
    RECT work_area;
    LONG l, exl;
    HDC hdc;
    HRESULT hres;

    screen = ((void*)0);
    hres = IHTMLWindow2_get_screen(window, &screen);
    ok(hres == S_OK, "get_screen failed: %08x\n", hres);
    ok(screen != ((void*)0), "screen == NULL\n");

    screen2 = ((void*)0);
    hres = IHTMLWindow2_get_screen(window, &screen2);
    ok(hres == S_OK, "get_screen failed: %08x\n", hres);
    ok(screen2 != ((void*)0), "screen == NULL\n");
    ok(iface_cmp((IUnknown*)screen2, (IUnknown*)screen), "screen2 != screen\n");
    IHTMLScreen_Release(screen2);

    hres = IHTMLScreen_QueryInterface(screen, &IID_IDispatchEx, (void**)&dispex);
    ok(hres == S_OK || broken(hres == E_NOINTERFACE), "Could not get IDispatchEx interface: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        test_disp((IUnknown*)screen, &DIID_DispHTMLScreen, "[object]");
        IDispatchEx_Release(dispex);
    }

    hdc = CreateICA("DISPLAY", ((void*)0), ((void*)0), ((void*)0));

    exl = GetDeviceCaps(hdc, HORZRES);
    l = 0xdeadbeef;
    hres = IHTMLScreen_get_width(screen, &l);
    ok(hres == S_OK, "get_width failed: %08x\n", hres);
    ok(l == exl, "width = %d, expected %d\n", l, exl);

    exl = GetDeviceCaps(hdc, VERTRES);
    l = 0xdeadbeef;
    hres = IHTMLScreen_get_height(screen, &l);
    ok(hres == S_OK, "get_height failed: %08x\n", hres);
    ok(l == exl, "height = %d, expected %d\n", l, exl);

    exl = GetDeviceCaps(hdc, BITSPIXEL);
    l = 0xdeadbeef;
    hres = IHTMLScreen_get_colorDepth(screen, &l);
    ok(hres == S_OK, "get_height failed: %08x\n", hres);
    ok(l == exl, "height = %d, expected %d\n", l, exl);

    DeleteObject(hdc);

    SystemParametersInfoW(SPI_GETWORKAREA, 0, &work_area, 0);

    l = 0xdeadbeef;
    hres = IHTMLScreen_get_availHeight(screen, &l);
    ok(hres == S_OK, "get_availHeight failed: %08x\n", hres);
    ok(l == work_area.bottom-work_area.top, "availHeight = %d, expected %d\n", l, work_area.bottom-work_area.top);

    l = 0xdeadbeef;
    hres = IHTMLScreen_get_availWidth(screen, &l);
    ok(hres == S_OK, "get_availWidth failed: %08x\n", hres);
    ok(l == work_area.right-work_area.left, "availWidth = %d, expected %d\n", l, work_area.right-work_area.left);

    IHTMLScreen_Release(screen);
}
