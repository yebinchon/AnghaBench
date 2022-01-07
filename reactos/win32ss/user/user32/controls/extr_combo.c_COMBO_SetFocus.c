
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wState; int textRect; int self; int hWndLBox; } ;
typedef TYPE_1__* LPHEADCOMBO ;


 int CBF_EDIT ;
 int CBF_FOCUSED ;
 int CBN_SETFOCUS ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int CB_NOTIFY (TYPE_1__*,int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int LB_CARETON ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static void COMBO_SetFocus( LPHEADCOMBO lphc )
{
   if( !(lphc->wState & CBF_FOCUSED) )
   {
       if( CB_GETTYPE(lphc) == CBS_DROPDOWNLIST )
           SendMessageW(lphc->hWndLBox, LB_CARETON, 0, 0);





       if( !(lphc->wState & CBF_EDIT) )
  InvalidateRect(lphc->self, &lphc->textRect, TRUE);

       CB_NOTIFY( lphc, CBN_SETFOCUS );
       lphc->wState |= CBF_FOCUSED;
   }
}
