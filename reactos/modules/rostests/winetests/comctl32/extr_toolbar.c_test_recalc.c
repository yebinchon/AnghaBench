
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bi ;
struct TYPE_2__ {int cbSize; char* pszText; int dwMask; } ;
typedef TYPE_1__ TBBUTTONINFOA ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int CCS_BOTTOM ;
 int CCS_VERT ;
 int DestroyWindow (int *) ;
 int GWL_STYLE ;
 int SendMessageA (int *,int ,int,int) ;
 int SetWindowLongA (int *,int ,int) ;
 int TBIF_TEXT ;
 int TBSTYLE_EX_MIXEDBUTTONS ;
 int TBSTYLE_TOOLTIPS ;
 int TBSTYLE_TRANSPARENT ;
 int TBSTYLE_WRAPABLE ;
 int TB_GETEXTENDEDSTYLE ;
 int TB_GETSTYLE ;
 int TB_INSERTBUTTONA ;
 int TB_SETBUTTONINFOA ;
 int TB_SETEXTENDEDSTYLE ;
 int TB_SETSTYLE ;
 int * buttons3 ;
 int did_recalc (int *) ;
 int expect (int ,int) ;
 int ok (int,char*,...) ;
 int prepare_recalc_test (int **) ;
 int restore_recalc_state (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_recalc(void)
{
    HWND hToolbar = ((void*)0);
    TBBUTTONINFOA bi;
    CHAR test[] = "Test";
    const int EX_STYLES_COUNT = 5;
    int i;
    BOOL recalc;
    DWORD style;



    prepare_recalc_test(&hToolbar);
    SendMessageA(hToolbar, TB_INSERTBUTTONA, 1, (LPARAM)&buttons3[0]);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "Unexpected recalc - adding button without text\n");

    prepare_recalc_test(&hToolbar);
    SendMessageA(hToolbar, TB_INSERTBUTTONA, 1, (LPARAM)&buttons3[3]);
    recalc = did_recalc(hToolbar);
    ok(recalc, "Expected a recalc - adding button with text\n");


    prepare_recalc_test(&hToolbar);
    bi.cbSize = sizeof(bi);
    bi.dwMask = TBIF_TEXT;
    bi.pszText = test;
    SendMessageA(hToolbar, TB_SETBUTTONINFOA, 1, (LPARAM)&bi);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "Unexpected recalc - setting a button text\n");



    for (i = 0; i < EX_STYLES_COUNT; i++)
    {
        if (i == 1 || i == 3)
            continue;
        prepare_recalc_test(&hToolbar);
        expect(0, (int)SendMessageA(hToolbar, TB_GETEXTENDEDSTYLE, 0, 0));
        SendMessageA(hToolbar, TB_SETEXTENDEDSTYLE, 0, (1 << i));
        recalc = did_recalc(hToolbar);
        ok(!recalc, "Unexpected recalc - setting bit %d\n", i);
        SendMessageA(hToolbar, TB_SETEXTENDEDSTYLE, 0, 0);
        recalc = did_recalc(hToolbar);
        ok(!recalc, "Unexpected recalc - clearing bit %d\n", i);
        expect(0, (int)SendMessageA(hToolbar, TB_GETEXTENDEDSTYLE, 0, 0));
    }


    prepare_recalc_test(&hToolbar);
    SendMessageA(hToolbar, TB_SETEXTENDEDSTYLE, 0, TBSTYLE_EX_MIXEDBUTTONS);
    recalc = did_recalc(hToolbar);
    if (recalc)
    {
        ok(recalc, "Expected a recalc - setting TBSTYLE_EX_MIXEDBUTTONS\n");
        restore_recalc_state(hToolbar);
        SendMessageA(hToolbar, TB_SETEXTENDEDSTYLE, 0, TBSTYLE_EX_MIXEDBUTTONS);
        recalc = did_recalc(hToolbar);
        ok(!recalc, "Unexpected recalc - setting TBSTYLE_EX_MIXEDBUTTONS again\n");
        restore_recalc_state(hToolbar);
        SendMessageA(hToolbar, TB_SETEXTENDEDSTYLE, 0, 0);
        recalc = did_recalc(hToolbar);
        ok(recalc, "Expected a recalc - clearing TBSTYLE_EX_MIXEDBUTTONS\n");
    }
    else win_skip( "No recalc on TBSTYLE_EX_MIXEDBUTTONS\n" );





    prepare_recalc_test(&hToolbar);
    style = SendMessageA(hToolbar, TB_GETSTYLE, 0, 0);
    SendMessageA(hToolbar, TB_SETSTYLE, 0, style);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "recalc %d\n", recalc);

    SendMessageA(hToolbar, TB_SETSTYLE, 0, style | TBSTYLE_TOOLTIPS | TBSTYLE_TRANSPARENT | CCS_BOTTOM);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "recalc %d\n", recalc);

    SendMessageA(hToolbar, TB_SETSTYLE, 0, style | TBSTYLE_WRAPABLE);
    recalc = did_recalc(hToolbar);
    ok(recalc, "recalc %d\n", recalc);
    restore_recalc_state(hToolbar);

    SendMessageA(hToolbar, TB_SETSTYLE, 0, style | TBSTYLE_WRAPABLE);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "recalc %d\n", recalc);

    SendMessageA(hToolbar, TB_SETSTYLE, 0, style);
    recalc = did_recalc(hToolbar);
    ok(recalc, "recalc %d\n", recalc);
    restore_recalc_state(hToolbar);


    SendMessageA(hToolbar, TB_SETSTYLE, 0, style | CCS_VERT);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "recalc %d\n", recalc);
    restore_recalc_state(hToolbar);

    SendMessageA(hToolbar, TB_SETSTYLE, 0, style);
    recalc = did_recalc(hToolbar);
    ok(!recalc, "recalc %d\n", recalc);
    restore_recalc_state(hToolbar);


    SetWindowLongA(hToolbar, GWL_STYLE, style | TBSTYLE_WRAPABLE);
    recalc = did_recalc(hToolbar);
    ok(recalc, "recalc %d\n", recalc);

    DestroyWindow(hToolbar);
}
