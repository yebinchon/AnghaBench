
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int metrics ;
struct TYPE_3__ {int dwMask; int cxPad; int cbSize; int cyPad; int cxButtonSpacing; int cyButtonSpacing; } ;
typedef TYPE_1__ TBMETRICS ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int * HWND ;


 int * CreateWindowExW (int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int SendMessageW (int *,int ,int ,int ) ;
 int TBMF_BARPAD ;
 int TBMF_BUTTONSPACING ;
 int TBMF_PAD ;
 int TB_GETMETRICS ;
 int TOOLBARCLASSNAMEW ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;

void TestButtonSpacing()
{
    HWND hwnd;
    TBMETRICS metrics;
    LRESULT lres;

    hwnd = CreateWindowExW(0, TOOLBARCLASSNAMEW, L"Test", 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0));
    ok(hwnd != ((void*)0), "CreateWindowEx failed\n");

    memset(&metrics, 0, sizeof(metrics));
    lres = SendMessageW(hwnd, TB_GETMETRICS, 0, (LPARAM)&metrics);
    ok (lres == 0, "Got %d result\n", (int)lres);
    ok (metrics.dwMask == 0, "Got %lu\n", metrics.dwMask);
    ok (metrics.cxPad == 0, "Got %d\n", metrics.cxPad);

    metrics.cbSize = sizeof(metrics);
    metrics.dwMask = TBMF_PAD|TBMF_BARPAD|TBMF_BUTTONSPACING;
    lres = SendMessageW(hwnd, TB_GETMETRICS, 0, (LPARAM)&metrics);
    ok (lres == 0, "Got %lu result\n", lres);
    ok (metrics.dwMask == (TBMF_PAD|TBMF_BARPAD|TBMF_BUTTONSPACING), "Got %lu\n", metrics.dwMask);
    ok (metrics.cxPad == 7, "Got %d\n", metrics.cxPad);
    ok (metrics.cyPad == 6, "Got %d\n", metrics.cyPad);
    ok (metrics.cxButtonSpacing == 0, "Got %d\n", metrics.cxButtonSpacing);
    ok (metrics.cyButtonSpacing == 0, "Got %d\n", metrics.cyButtonSpacing);
}
