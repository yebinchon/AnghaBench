
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int wState; int textRect; int self; int hWndLBox; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOL ;


 int CBF_EDIT ;
 int CBUpdateEdit (TYPE_1__*,scalar_t__) ;
 int InvalidateRect (int ,int *,int ) ;
 int LB_SELECTSTRING ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT COMBO_SelectString( LPHEADCOMBO lphc, INT start, LPARAM pText, BOOL unicode )
{
   INT index = unicode ? SendMessageW(lphc->hWndLBox, LB_SELECTSTRING, (WPARAM)start, pText) :
                         SendMessageA(lphc->hWndLBox, LB_SELECTSTRING, (WPARAM)start, pText);
   if( index >= 0 )
   {
     if( lphc->wState & CBF_EDIT )
       CBUpdateEdit( lphc, index );
     else
     {
       InvalidateRect(lphc->self, &lphc->textRect, TRUE);
     }
   }
   return (LRESULT)index;
}
