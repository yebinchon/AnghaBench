
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int GHOST_INTERVAL ;
 int GHOST_TIMER_ID ;
 int Ghost_Unenchant (int ,int ) ;
 int IDS_ASK_TERMINATE ;
 int IDS_HUNG_UP_TITLE ;
 scalar_t__ IDYES ;
 int KillTimer (int ,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MB_ICONINFORMATION ;
 int MB_YESNO ;
 scalar_t__ MessageBoxW (int ,int *,int *,int) ;
 int SetTimer (int ,int ,int ,int *) ;
 int TRUE ;
 int User32Instance ;

__attribute__((used)) static void
Ghost_OnClose(HWND hwnd)
{
    INT id;
    WCHAR szAskTerminate[128];
    WCHAR szHungUpTitle[128];


    KillTimer(hwnd, GHOST_TIMER_ID);

    LoadStringW(User32Instance, IDS_ASK_TERMINATE,
                szAskTerminate, ARRAYSIZE(szAskTerminate));
    LoadStringW(User32Instance, IDS_HUNG_UP_TITLE,
                szHungUpTitle, ARRAYSIZE(szHungUpTitle));

    id = MessageBoxW(hwnd, szAskTerminate, szHungUpTitle,
                     MB_ICONINFORMATION | MB_YESNO);
    if (id == IDYES)
    {

        Ghost_Unenchant(hwnd, TRUE);
        return;
    }


    SetTimer(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, ((void*)0));
}
