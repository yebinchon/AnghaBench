
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WPARAM ;
typedef scalar_t__ UINT ;
typedef scalar_t__ LPARAM ;
typedef int LONG ;
typedef int HWND ;


 int DumpInSMEX () ;
 scalar_t__ ISMEX_NOSEND ;
 scalar_t__ InSendMessage () ;
 scalar_t__ InSendMessageEx (int *) ;
 scalar_t__ SC_RESTORE ;
 scalar_t__ WM_ACTIVATE ;
 scalar_t__ WM_NCACTIVATE ;
 scalar_t__ WM_SYSCOMMAND ;
 scalar_t__ WM_TIMER ;
 scalar_t__ WM_WINDOWPOSCHANGING ;
 int ok (int,char*,scalar_t__) ;
 int s_bTracing ;
 int s_nWM_ACTIVATE ;
 int s_nWM_NCACTIVATE ;
 int s_nWM_SYSCOMMAND_NOT_SC_RESTORE ;
 int s_nWM_SYSCOMMAND_SC_RESTORE ;
 int s_nWM_WINDOWPOSCHANGING ;
 int trace (char*,char*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
DoMessage(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    if (uMsg == WM_TIMER || !s_bTracing)
        return;

    trace("%s: uMsg:0x%04X, wParam:0x%08lX, lParam:0x%08lX, ISMEX_:%s\n",
          (InSendMessage() ? "S" : "P"), uMsg, (LONG)wParam, (LONG)lParam,
           DumpInSMEX());

    if (uMsg == WM_SYSCOMMAND)
    {
        ok(InSendMessageEx(((void*)0)) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", InSendMessageEx(((void*)0)));
        if (wParam == SC_RESTORE)
            ++s_nWM_SYSCOMMAND_SC_RESTORE;
        else
            ++s_nWM_SYSCOMMAND_NOT_SC_RESTORE;
    }

    if (uMsg == WM_NCACTIVATE)
    {
        ok(InSendMessageEx(((void*)0)) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", InSendMessageEx(((void*)0)));
        ++s_nWM_NCACTIVATE;
    }

    if (uMsg == WM_WINDOWPOSCHANGING)
    {
        ok(InSendMessageEx(((void*)0)) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", InSendMessageEx(((void*)0)));
        ++s_nWM_WINDOWPOSCHANGING;
    }

    if (uMsg == WM_ACTIVATE)
    {
        ok(InSendMessageEx(((void*)0)) == ISMEX_NOSEND,
           "InSendMessageEx(NULL) was 0x%08lX\n", InSendMessageEx(((void*)0)));
        ++s_nWM_ACTIVATE;
    }
}
