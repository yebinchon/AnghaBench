#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bottom; int top; int right; int left; } ;
typedef  TYPE_1__ RECT ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLScreen ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIID_DispHTMLScreen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  SPI_GETWORKAREA ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERTRES ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC18(IHTMLWindow2 *window)
{
    IHTMLScreen *screen, *screen2;
    IDispatchEx *dispex;
    RECT work_area;
    LONG l, exl;
    HDC hdc;
    HRESULT hres;

    screen = NULL;
    hres = FUNC11(window, &screen);
    FUNC16(hres == S_OK, "get_screen failed: %08x\n", hres);
    FUNC16(screen != NULL, "screen == NULL\n");

    screen2 = NULL;
    hres = FUNC11(window, &screen2);
    FUNC16(hres == S_OK, "get_screen failed: %08x\n", hres);
    FUNC16(screen2 != NULL, "screen == NULL\n");
    FUNC16(FUNC15((IUnknown*)screen2, (IUnknown*)screen), "screen2 != screen\n");
    FUNC5(screen2);

    hres = FUNC4(screen, &IID_IDispatchEx, (void**)&dispex);
    FUNC16(hres == S_OK || FUNC14(hres == E_NOINTERFACE), "Could not get IDispatchEx interface: %08x\n", hres);
    if(FUNC12(hres)) {
        FUNC17((IUnknown*)screen, &DIID_DispHTMLScreen, "[object]");
        FUNC3(dispex);
    }

    hdc = FUNC0("DISPLAY", NULL, NULL, NULL);

    exl = FUNC2(hdc, HORZRES);
    l = 0xdeadbeef;
    hres = FUNC10(screen, &l);
    FUNC16(hres == S_OK, "get_width failed: %08x\n", hres);
    FUNC16(l == exl, "width = %d, expected %d\n", l, exl);

    exl = FUNC2(hdc, VERTRES);
    l = 0xdeadbeef;
    hres = FUNC9(screen, &l);
    FUNC16(hres == S_OK, "get_height failed: %08x\n", hres);
    FUNC16(l == exl, "height = %d, expected %d\n", l, exl);

    exl = FUNC2(hdc, BITSPIXEL);
    l = 0xdeadbeef;
    hres = FUNC8(screen, &l);
    FUNC16(hres == S_OK, "get_height failed: %08x\n", hres);
    FUNC16(l == exl, "height = %d, expected %d\n", l, exl);

    FUNC1(hdc);

    FUNC13(SPI_GETWORKAREA, 0, &work_area, 0);

    l = 0xdeadbeef;
    hres = FUNC6(screen, &l);
    FUNC16(hres == S_OK, "get_availHeight failed: %08x\n", hres);
    FUNC16(l == work_area.bottom-work_area.top, "availHeight = %d, expected %d\n", l, work_area.bottom-work_area.top);

    l = 0xdeadbeef;
    hres = FUNC7(screen, &l);
    FUNC16(hres == S_OK, "get_availWidth failed: %08x\n", hres);
    FUNC16(l == work_area.right-work_area.left, "availWidth = %d, expected %d\n", l, work_area.right-work_area.left);

    FUNC5(screen);
}