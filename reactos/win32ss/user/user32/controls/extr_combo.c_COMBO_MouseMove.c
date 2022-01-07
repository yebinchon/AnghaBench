
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_10__ {int wState; int hWndLBox; int self; int buttonRect; } ;
struct TYPE_9__ {short x; short y; } ;
typedef int RECT ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef scalar_t__ BOOL ;


 int CBF_BUTTONDOWN ;
 int CBF_CAPTURE ;
 int CBRepaintButton (TYPE_2__*) ;
 scalar_t__ CBS_DROPDOWN ;
 int CBUpdateLBox (TYPE_2__*,int ) ;
 scalar_t__ CB_GETTYPE (TYPE_2__*) ;
 int GetClientRect (int ,int *) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int MapWindowPoints (int ,int ,TYPE_1__*,int) ;
 scalar_t__ PtInRect (int *,TYPE_1__) ;
 int ReleaseCapture () ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int WM_LBUTTONDOWN ;

__attribute__((used)) static void COMBO_MouseMove( LPHEADCOMBO lphc, WPARAM wParam, LPARAM lParam )
{
   POINT pt;
   RECT lbRect;

   pt.x = (short)LOWORD(lParam);
   pt.y = (short)HIWORD(lParam);

   if( lphc->wState & CBF_BUTTONDOWN )
   {
     BOOL bButton;

     bButton = PtInRect(&lphc->buttonRect, pt);

     if( !bButton )
     {
       lphc->wState &= ~CBF_BUTTONDOWN;
       CBRepaintButton( lphc );
     }
   }

   GetClientRect( lphc->hWndLBox, &lbRect );
   MapWindowPoints( lphc->self, lphc->hWndLBox, &pt, 1 );
   if( PtInRect(&lbRect, pt) )
   {
       lphc->wState &= ~CBF_CAPTURE;
       ReleaseCapture();
       if( CB_GETTYPE(lphc) == CBS_DROPDOWN ) CBUpdateLBox( lphc, TRUE );


       SendMessageW(lphc->hWndLBox, WM_LBUTTONDOWN, wParam, lParam);
   }
}
