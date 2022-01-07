
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ message; scalar_t__ wParam; int lParam; } ;
struct TYPE_11__ {int y; int x; } ;
typedef int PWND_DATA ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ MSG ;
typedef int INT ;
typedef scalar_t__ HWND ;


 scalar_t__ CallMsgFilterW (TYPE_2__*,int ) ;
 int ClientToScreen (scalar_t__,TYPE_1__*) ;
 int DispatchMessageW (TYPE_2__*) ;
 int GET_X_LPARAM (int ) ;
 int GET_Y_LPARAM (int ) ;
 scalar_t__ GetCapture () ;
 int GetMessageW (TYPE_2__*,int ,int ,int ) ;
 int IsWindow (scalar_t__) ;
 int MSGF_SCROLLBAR ;
 int ReleaseCapture () ;
 int SCROLL_HandleScrollEvent (int ,scalar_t__,int ,scalar_t__,TYPE_1__) ;
 scalar_t__ SCROLL_TIMER ;
 int ScreenToWindow (scalar_t__,TYPE_1__*) ;
 int ThemeGetWndData (scalar_t__) ;
 int TranslateMessage (TYPE_2__*) ;
 scalar_t__ WM_LBUTTONDOWN ;
 scalar_t__ WM_LBUTTONUP ;
 scalar_t__ WM_MOUSEMOVE ;
 scalar_t__ WM_SYSTIMER ;

__attribute__((used)) static void
SCROLL_TrackScrollBar( HWND hwnd, INT scrollbar, POINT pt )
{
    MSG msg;
    PWND_DATA pwndData = ThemeGetWndData(hwnd);
    if(!pwndData)
        return;

    ScreenToWindow(hwnd, &pt);

    SCROLL_HandleScrollEvent(pwndData, hwnd, scrollbar, WM_LBUTTONDOWN, pt );

    do
    {
        if (!GetMessageW( &msg, 0, 0, 0 )) break;
        if (CallMsgFilterW( &msg, MSGF_SCROLLBAR )) continue;
        if (msg.message == WM_LBUTTONUP ||
            msg.message == WM_MOUSEMOVE ||
            (msg.message == WM_SYSTIMER && msg.wParam == SCROLL_TIMER))
        {
            pt.x = GET_X_LPARAM(msg.lParam);
            pt.y = GET_Y_LPARAM(msg.lParam);
            ClientToScreen(hwnd, &pt);
            ScreenToWindow(hwnd, &pt);
            SCROLL_HandleScrollEvent(pwndData, hwnd, scrollbar, msg.message, pt );
        }
        else
        {
            TranslateMessage( &msg );
            DispatchMessageW( &msg );
        }
        if (!IsWindow( hwnd ))
        {
            ReleaseCapture();
            break;
        }
    } while (msg.message != WM_LBUTTONUP && GetCapture() == hwnd);
}
