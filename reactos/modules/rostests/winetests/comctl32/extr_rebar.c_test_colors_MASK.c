#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  scheme ;
struct TYPE_4__ {int dwSize; int clrBtnHighlight; int clrBtnShadow; } ;
struct TYPE_3__ {int clrFore; int clrBack; int /*<<< orphan*/  fMask; int /*<<< orphan*/  cbSize; } ;
typedef  TYPE_1__ REBARBANDINFOA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ COLORSCHEME ;
typedef  int COLORREF ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLR_DEFAULT ; 
 int /*<<< orphan*/  CLR_NONE ; 
 int /*<<< orphan*/  COLOR_3DFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBBIM_COLORS ; 
 int /*<<< orphan*/  RB_GETBANDINFOA ; 
 int /*<<< orphan*/  RB_GETBKCOLOR ; 
 int /*<<< orphan*/  RB_GETCOLORSCHEME ; 
 int /*<<< orphan*/  RB_GETTEXTCOLOR ; 
 int /*<<< orphan*/  RB_SETTEXTCOLOR ; 
 int /*<<< orphan*/  REBARBANDINFOA_V6_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    COLORSCHEME scheme;
    COLORREF clr;
    BOOL ret;
    HWND hRebar;
    REBARBANDINFOA bi;

    hRebar = FUNC6();

    /* test default colors */
    clr = FUNC3(hRebar, RB_GETTEXTCOLOR, 0, 0);
    FUNC5(clr, CLR_NONE, "%x");
    clr = FUNC3(hRebar, RB_GETBKCOLOR, 0, 0);
    FUNC5(clr, CLR_NONE, "%x");

    scheme.dwSize = sizeof(scheme);
    scheme.clrBtnHighlight = 0;
    scheme.clrBtnShadow = 0;
    ret = FUNC3(hRebar, RB_GETCOLORSCHEME, 0, (LPARAM)&scheme);
    if (ret)
    {
        FUNC5(scheme.clrBtnHighlight, CLR_DEFAULT, "%x");
        FUNC5(scheme.clrBtnShadow, CLR_DEFAULT, "%x");
    }
    else
        FUNC8("RB_GETCOLORSCHEME not supported\n");

    /* check default band colors */
    FUNC4(hRebar, "", 0, 10, 10);
    bi.cbSize = REBARBANDINFOA_V6_SIZE;
    bi.fMask = RBBIM_COLORS;
    bi.clrFore = bi.clrBack = 0xc0ffe;
    ret = FUNC3(hRebar, RB_GETBANDINFOA, 0, (LPARAM)&bi);
    FUNC7(ret, "RB_GETBANDINFOA failed\n");
    FUNC5(bi.clrFore, FUNC2(0, 0, 0), "%x");
    FUNC5(bi.clrBack, FUNC1(COLOR_3DFACE), "%x");

    FUNC3(hRebar, RB_SETTEXTCOLOR, 0, FUNC2(255, 0, 0));
    bi.clrFore = bi.clrBack = 0xc0ffe;
    ret = FUNC3(hRebar, RB_GETBANDINFOA, 0, (LPARAM)&bi);
    FUNC7(ret, "RB_GETBANDINFOA failed\n");
    FUNC5(bi.clrFore, FUNC2(0, 0, 0), "%x");

    FUNC0(hRebar);
}