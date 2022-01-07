
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef scalar_t__ UINT ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int DWLP_MSGRESULT ;
 scalar_t__ DefWindowProcA (int ,scalar_t__,int ,int ) ;
 scalar_t__ DefWindowProcW (int ,scalar_t__,int ,int ) ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 scalar_t__ WM_CHARTOITEM ;
 scalar_t__ WM_COMPAREITEM ;
 scalar_t__ WM_CTLCOLOR ;
 scalar_t__ WM_CTLCOLORMSGBOX ;
 scalar_t__ WM_CTLCOLORSTATIC ;
 scalar_t__ WM_INITDIALOG ;
 scalar_t__ WM_QUERYDRAGICON ;
 scalar_t__ WM_VKEYTOITEM ;

__attribute__((used)) static LRESULT DEFDLG_Epilog(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam, BOOL fResult, BOOL fAnsi)
{
    if ((msg >= WM_CTLCOLORMSGBOX && msg <= WM_CTLCOLORSTATIC) ||
         msg == WM_CTLCOLOR)
       {
          if (fResult) return fResult;

          return fAnsi ? DefWindowProcA(hwnd, msg, wParam, lParam):
                         DefWindowProcW(hwnd, msg, wParam, lParam);
       }
    if ( msg == WM_COMPAREITEM ||
         msg == WM_VKEYTOITEM || msg == WM_CHARTOITEM ||
         msg == WM_QUERYDRAGICON || msg == WM_INITDIALOG)
        return fResult;

    return GetWindowLongPtrW( hwnd, DWLP_MSGRESULT );
}
