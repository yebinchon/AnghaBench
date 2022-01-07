
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int scheme ;
struct TYPE_4__ {int dwSize; int clrBtnHighlight; int clrBtnShadow; } ;
struct TYPE_3__ {int clrFore; int clrBack; int fMask; int cbSize; } ;
typedef TYPE_1__ REBARBANDINFOA ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_2__ COLORSCHEME ;
typedef int COLORREF ;
typedef void* BOOL ;


 int CLR_DEFAULT ;
 int CLR_NONE ;
 int COLOR_3DFACE ;
 int DestroyWindow (int ) ;
 int GetSysColor (int ) ;
 int RBBIM_COLORS ;
 int RB_GETBANDINFOA ;
 int RB_GETBKCOLOR ;
 int RB_GETCOLORSCHEME ;
 int RB_GETTEXTCOLOR ;
 int RB_SETTEXTCOLOR ;
 int REBARBANDINFOA_V6_SIZE ;
 int RGB (int,int ,int ) ;
 void* SendMessageA (int ,int ,int ,int ) ;
 int add_band_w (int ,char*,int ,int,int) ;
 int compare (int,int ,char*) ;
 int create_rebar_control () ;
 int ok (void*,char*) ;
 int skip (char*) ;

__attribute__((used)) static void test_colors(void)
{
    COLORSCHEME scheme;
    COLORREF clr;
    BOOL ret;
    HWND hRebar;
    REBARBANDINFOA bi;

    hRebar = create_rebar_control();


    clr = SendMessageA(hRebar, RB_GETTEXTCOLOR, 0, 0);
    compare(clr, CLR_NONE, "%x");
    clr = SendMessageA(hRebar, RB_GETBKCOLOR, 0, 0);
    compare(clr, CLR_NONE, "%x");

    scheme.dwSize = sizeof(scheme);
    scheme.clrBtnHighlight = 0;
    scheme.clrBtnShadow = 0;
    ret = SendMessageA(hRebar, RB_GETCOLORSCHEME, 0, (LPARAM)&scheme);
    if (ret)
    {
        compare(scheme.clrBtnHighlight, CLR_DEFAULT, "%x");
        compare(scheme.clrBtnShadow, CLR_DEFAULT, "%x");
    }
    else
        skip("RB_GETCOLORSCHEME not supported\n");


    add_band_w(hRebar, "", 0, 10, 10);
    bi.cbSize = REBARBANDINFOA_V6_SIZE;
    bi.fMask = RBBIM_COLORS;
    bi.clrFore = bi.clrBack = 0xc0ffe;
    ret = SendMessageA(hRebar, RB_GETBANDINFOA, 0, (LPARAM)&bi);
    ok(ret, "RB_GETBANDINFOA failed\n");
    compare(bi.clrFore, RGB(0, 0, 0), "%x");
    compare(bi.clrBack, GetSysColor(COLOR_3DFACE), "%x");

    SendMessageA(hRebar, RB_SETTEXTCOLOR, 0, RGB(255, 0, 0));
    bi.clrFore = bi.clrBack = 0xc0ffe;
    ret = SendMessageA(hRebar, RB_GETBANDINFOA, 0, (LPARAM)&bi);
    ok(ret, "RB_GETBANDINFOA failed\n");
    compare(bi.clrFore, RGB(0, 0, 0), "%x");

    DestroyWindow(hRebar);
}
