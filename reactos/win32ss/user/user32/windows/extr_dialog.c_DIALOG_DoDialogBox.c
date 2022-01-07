
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int flags; int idResult; } ;
struct TYPE_12__ {scalar_t__ message; int wParam; } ;
struct TYPE_11__ {int state; } ;
typedef TYPE_1__* PWND ;
typedef TYPE_2__ MSG ;
typedef int LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef TYPE_3__ DIALOGINFO ;
typedef scalar_t__ BOOL ;


 int DF_END ;
 int DS_NOIDLEMSG ;
 int DestroyWindow (scalar_t__) ;
 int DispatchMessageW (TYPE_2__*) ;
 scalar_t__ FALSE ;
 TYPE_3__* GETDLGINFO (scalar_t__) ;
 int GWL_STYLE ;
 scalar_t__ GetForegroundWindow () ;
 scalar_t__ GetKeyState (int ) ;
 int GetMessageW (TYPE_2__*,int ,int ,int ) ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 int IsDialogMessageW (scalar_t__,TYPE_2__*) ;
 int IsWindow (scalar_t__) ;
 int MSGF_DIALOGBOX ;
 int PM_REMOVE ;
 int PeekMessageW (TYPE_2__*,int ,int ,int ,int ) ;
 int PostQuitMessage (int) ;
 int SW_SHOWNORMAL ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int TranslateMessage (TYPE_2__*) ;
 int VK_CONTROL ;
 TYPE_1__* ValidateHwnd (scalar_t__) ;
 int WM_COPY ;
 int WM_ENTERIDLE ;
 scalar_t__ WM_KEYDOWN ;
 scalar_t__ WM_QUIT ;
 scalar_t__ WM_TIMER ;
 int WNDS_MSGBOX ;

INT DIALOG_DoDialogBox( HWND hwnd, HWND owner )
{
    DIALOGINFO * dlgInfo;
    MSG msg;
    INT retval;
    BOOL bFirstEmpty;
    PWND pWnd;

    pWnd = ValidateHwnd(hwnd);
    if (!pWnd) return -1;

    if (!(dlgInfo = GETDLGINFO(hwnd))) return -1;

    bFirstEmpty = TRUE;
    if (!(dlgInfo->flags & DF_END))
    {
        for (;;)
        {
            if (!PeekMessageW( &msg, 0, 0, 0, PM_REMOVE ))
            {
                if (bFirstEmpty)
                {

                    ShowWindow( hwnd, SW_SHOWNORMAL );
                    bFirstEmpty = FALSE;
                }
                if (!(GetWindowLongPtrW( hwnd, GWL_STYLE ) & DS_NOIDLEMSG))
               {

                    SendMessageW( owner, WM_ENTERIDLE, MSGF_DIALOGBOX, (LPARAM)hwnd );
                }
                GetMessageW( &msg, 0, 0, 0 );
            }

            if (msg.message == WM_QUIT)
            {
                PostQuitMessage( msg.wParam );
                if (!IsWindow( hwnd )) return 0;
                break;
            }





            if (msg.message == WM_KEYDOWN &&
                pWnd->state & WNDS_MSGBOX &&
                GetForegroundWindow() == hwnd)
            {
                if (msg.wParam == L'C' && GetKeyState(VK_CONTROL) < 0)
                    SendMessageW(hwnd, WM_COPY, 0, 0);
            }

            if (!IsWindow( hwnd )) return 0;
            if (!(dlgInfo->flags & DF_END) && !IsDialogMessageW( hwnd, &msg))
            {
                TranslateMessage( &msg );
                DispatchMessageW( &msg );
            }
            if (!IsWindow( hwnd )) return 0;
            if (dlgInfo->flags & DF_END) break;

            if (bFirstEmpty && msg.message == WM_TIMER)
            {
                ShowWindow( hwnd, SW_SHOWNORMAL );
                bFirstEmpty = FALSE;
            }
        }
    }
    retval = dlgInfo->idResult;
    DestroyWindow( hwnd );
    return retval;
}
