
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rc ;
struct TYPE_6__ {int expectedRows; int bLarger; int nRows; } ;
typedef TYPE_1__ TBBUTTON ;
typedef int RECT ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int DWORD ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CCS_NOMOVEY ;
 int CCS_NOPARENTALIGN ;
 int CCS_NORESIZE ;
 int CCS_TOP ;
 int DestroyWindow (int *) ;
 int MAKELONG (int ,int ) ;
 int MakeButton (TYPE_1__*,int,int,int ) ;
 int SendMessageA (int *,int ,int ,int ) ;
 int TBSTYLE_CHECKGROUP ;
 int TBSTYLE_FLAT ;
 int TB_AUTOSIZE ;
 int TB_GETROWS ;
 int TB_SETROWS ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_VISIBLE ;
 int hMainWnd ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;
 int * pCreateToolbarEx (int ,int,int ,int ,int *,int ,TYPE_1__*,int,int,int,int ,int ,int) ;
 TYPE_1__* tbrows_results ;

__attribute__((used)) static void test_setrows(void)
{
    TBBUTTON buttons[9];
    HWND hToolbar;
    DWORD i;

    for (i=0; i<9; i++)
        MakeButton(buttons+i, 1000+i, TBSTYLE_FLAT | TBSTYLE_CHECKGROUP, 0);


    hToolbar = pCreateToolbarEx(hMainWnd,
        WS_VISIBLE | WS_CLIPCHILDREN | WS_CHILD | CCS_NORESIZE | CCS_NOPARENTALIGN
        | CCS_NOMOVEY | CCS_TOP,
        0,
        0, ((void*)0), 0,
        buttons, ARRAY_SIZE(buttons),
        20, 20, 0, 0, sizeof(TBBUTTON));
    ok(hToolbar != ((void*)0), "Toolbar creation\n");
    ok(SendMessageA(hToolbar, TB_AUTOSIZE, 0, 0) == 0, "TB_AUTOSIZE failed\n");


    for (i=0; i<ARRAY_SIZE(tbrows_results); i++) {
        RECT rc;
        int rows;

        memset(&rc, 0xCC, sizeof(rc));
        SendMessageA(hToolbar, TB_SETROWS,
                     MAKELONG(tbrows_results[i].nRows, tbrows_results[i].bLarger),
                     (LPARAM) &rc);

        rows = SendMessageA(hToolbar, TB_GETROWS, MAKELONG(0,0), MAKELONG(0,0));
        ok(rows == tbrows_results[i].expectedRows,
                   "[%d] Unexpected number of rows %d (expected %d)\n", i, rows,
                   tbrows_results[i].expectedRows);
    }

    DestroyWindow(hToolbar);
}
