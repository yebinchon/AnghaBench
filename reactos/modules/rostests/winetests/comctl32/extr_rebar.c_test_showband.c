
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fMask; int cx; int cxMinChild; int cyMinChild; int * hwndChild; int cbSize; } ;
typedef TYPE_1__ REBARBANDINFOA ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int DestroyWindow (int ) ;
 scalar_t__ FALSE ;
 int RBBIM_CHILD ;
 int RBBIM_CHILDSIZE ;
 int RBBIM_SIZE ;
 int RB_INSERTBANDA ;
 int RB_SHOWBAND ;
 int REBARBANDINFOA_V6_SIZE ;
 scalar_t__ SendMessageA (int ,int ,int,scalar_t__) ;
 scalar_t__ TRUE ;
 int create_rebar_control () ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_showband(void)
{
    HWND hRebar;
    REBARBANDINFOA rbi;
    BOOL ret;

    hRebar = create_rebar_control();


    ret = SendMessageA(hRebar, RB_SHOWBAND, 0, TRUE);
    ok(ret == FALSE, "got %d\n", ret);

    rbi.cbSize = REBARBANDINFOA_V6_SIZE;
    rbi.fMask = RBBIM_SIZE | RBBIM_CHILDSIZE | RBBIM_CHILD;
    rbi.cx = 200;
    rbi.cxMinChild = 100;
    rbi.cyMinChild = 30;
    rbi.hwndChild = ((void*)0);
    SendMessageA(hRebar, RB_INSERTBANDA, -1, (LPARAM)&rbi);


    ret = SendMessageA(hRebar, RB_SHOWBAND, 1, TRUE);
    ok(ret == FALSE, "got %d\n", ret);

    ret = SendMessageA(hRebar, RB_SHOWBAND, 0, TRUE);
    ok(ret == TRUE, "got %d\n", ret);

    DestroyWindow(hRebar);
}
