
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
struct TYPE_4__ {int member_1; int member_2; int member_6; int idCommand; int fsState; int member_5; TYPE_1__ member_4; int member_3; int member_0; } ;
typedef TYPE_2__ TBBUTTON ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HMENU ;


 int CCS_NORESIZE ;
 int CreateWindowExA (int ,int ,int *,int,int ,int ,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int GetModuleHandleA (int *) ;
 int MoveWindow (int ,int ,int ,int,int,int ) ;
 int SendMessageA (int ,int ,int,int) ;
 int TBSTATE_ENABLED ;
 int TBSTATE_WRAP ;
 int TBSTYLE_WRAPABLE ;
 int TB_ADDBUTTONSA ;
 int TB_AUTOSIZE ;
 int TB_BUTTONSTRUCTSIZE ;
 int TB_GETBUTTON ;
 int TB_SETSTATE ;
 int TOOLBARCLASSNAMEA ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int hMainWnd ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_noresize(void)
{
    HWND wnd;
    int i;
    TBBUTTON button = {0, 10, TBSTATE_ENABLED, 0, {0, }, 0, -1};

    wnd = CreateWindowExA(0, TOOLBARCLASSNAMEA, ((void*)0), WS_CHILD | WS_VISIBLE | CCS_NORESIZE | TBSTYLE_WRAPABLE, 0, 0, 100, 20,
                          hMainWnd, (HMENU)5, GetModuleHandleA(((void*)0)), ((void*)0));
    SendMessageA(wnd, TB_BUTTONSTRUCTSIZE, sizeof(TBBUTTON), 0);

    for (i=0; i<30; i++)
    {
        button.idCommand = 10 + i;
        SendMessageA(wnd, TB_ADDBUTTONSA, 1, (LPARAM)&button);
    }

    SendMessageA(wnd, TB_SETSTATE, 10, TBSTATE_WRAP|TBSTATE_ENABLED);


    SendMessageA(wnd, TB_AUTOSIZE, 0, 0);
    for (i=0; i<30; i++)
    {
        SendMessageA(wnd, TB_GETBUTTON, i, (LPARAM)&button);
        if (i % 4 == 3)
            ok(button.fsState == (TBSTATE_WRAP|TBSTATE_ENABLED), "%d: got %08x\n", i, button.fsState);
        else
            ok(button.fsState == TBSTATE_ENABLED, "%d: got %08x\n", i, button.fsState);
    }


    MoveWindow(hMainWnd, 0,0, 400, 200, FALSE);
    for (i=0; i<30; i++)
    {
        SendMessageA(wnd, TB_GETBUTTON, i, (LPARAM)&button);
        if (i % 4 == 3)
            ok(button.fsState == (TBSTATE_WRAP|TBSTATE_ENABLED), "%d: got %08x\n", i, button.fsState);
        else
            ok(button.fsState == TBSTATE_ENABLED, "%d: got %08x\n", i, button.fsState);
    }


    SendMessageA(wnd, TB_AUTOSIZE, 0, 0);
    for (i=0; i<30; i++)
    {
        SendMessageA(wnd, TB_GETBUTTON, i, (LPARAM)&button);
        if (i % 4 == 3)
            ok(button.fsState == (TBSTATE_WRAP|TBSTATE_ENABLED), "%d: got %08x\n", i, button.fsState);
        else
            ok(button.fsState == TBSTATE_ENABLED, "%d: got %08x\n", i, button.fsState);
    }

    DestroyWindow(wnd);

}
