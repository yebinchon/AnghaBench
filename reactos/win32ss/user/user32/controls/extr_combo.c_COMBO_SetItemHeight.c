
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_8__ {int editHeight; int hWndLBox; int droppedRect; int textRect; int buttonRect; int self; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef int INT ;


 int CBCalcPlacement (int ,TYPE_1__*,int *,int *,int *) ;
 int CBForceDummyResize (TYPE_1__*) ;
 int CBResetPos (TYPE_1__*,int *,int *,int ) ;
 scalar_t__ CBS_SIMPLE ;
 int CB_ERR ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 scalar_t__ CB_OWNERDRAWN (TYPE_1__*) ;
 int LB_SETITEMHEIGHT ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT COMBO_SetItemHeight( LPHEADCOMBO lphc, INT index, INT height )
{
   LRESULT lRet = CB_ERR;

   if( index == -1 )
   {
       if( height < 32768 )
       {
           lphc->editHeight = height + 2;




  if ( CB_GETTYPE(lphc) == CBS_SIMPLE)
  {
    CBCalcPlacement(lphc->self,
      lphc,
      &lphc->textRect,
      &lphc->buttonRect,
      &lphc->droppedRect);

    CBResetPos( lphc, &lphc->textRect, &lphc->droppedRect, TRUE );
  }
  else
  {
    CBForceDummyResize(lphc);
  }

    lRet = height;
       }
   }
   else if ( CB_OWNERDRAWN(lphc) )
       lRet = SendMessageW(lphc->hWndLBox, LB_SETITEMHEIGHT, (WPARAM)index, (LPARAM)height);
   return lRet;
}
