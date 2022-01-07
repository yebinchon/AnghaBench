
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int wState; int buttonRect; int self; } ;
struct TYPE_9__ {short x; short y; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int CBDropDown (TYPE_2__*) ;
 int CBF_BUTTONDOWN ;
 int CBF_CAPTURE ;
 int CBF_DROPPED ;
 int CBRepaintButton (TYPE_2__*) ;
 int CBRollUp (TYPE_2__*,int ,int ) ;
 scalar_t__ CBS_DROPDOWN ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CB_GETTYPE (TYPE_2__*) ;
 int FALSE ;
 scalar_t__ HIWORD (int ) ;
 int IsWindow (int ) ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ PtInRect (int *,TYPE_1__) ;
 int ReleaseCapture () ;
 int SetCapture (int ) ;
 int TRUE ;

__attribute__((used)) static void COMBO_LButtonDown( LPHEADCOMBO lphc, LPARAM lParam )
{
   POINT pt;
   BOOL bButton;
   HWND hWnd = lphc->self;

   pt.x = (short)LOWORD(lParam);
   pt.y = (short)HIWORD(lParam);
   bButton = PtInRect(&lphc->buttonRect, pt);

   if( (CB_GETTYPE(lphc) == CBS_DROPDOWNLIST) ||
       (bButton && (CB_GETTYPE(lphc) == CBS_DROPDOWN)) )
   {
       lphc->wState |= CBF_BUTTONDOWN;
       if( lphc->wState & CBF_DROPPED )
       {


           lphc->wState &= ~CBF_BUTTONDOWN;
           CBRollUp( lphc, TRUE, FALSE );
    if( !IsWindow( hWnd ) ) return;

           if( lphc->wState & CBF_CAPTURE )
           {
               lphc->wState &= ~CBF_CAPTURE;
               ReleaseCapture();
           }
       }
       else
       {


           lphc->wState |= CBF_CAPTURE;
           SetCapture( hWnd );
           CBDropDown( lphc );
       }
       if( bButton ) CBRepaintButton( lphc );
   }
}
