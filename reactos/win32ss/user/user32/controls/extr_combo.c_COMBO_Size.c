
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int top; scalar_t__ bottom; } ;
struct TYPE_12__ {TYPE_7__ droppedRect; int textRect; int buttonRect; int self; } ;
struct TYPE_11__ {int bottom; int top; int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPHEADCOMBO ;


 int CBCalcPlacement (int ,TYPE_2__*,int *,int *,TYPE_7__*) ;
 int CBGetTextAreaHeight (int ,TYPE_2__*) ;
 int CBResetPos (TYPE_2__*,int *,TYPE_7__*,int ) ;
 scalar_t__ CBS_SIMPLE ;
 scalar_t__ CB_GETTYPE (TYPE_2__*) ;
 int COMBO_YBORDERSIZE () ;
 int FALSE ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOREDRAW ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int,int,int) ;
 int TRACE (char*,int,int,scalar_t__,int ) ;

__attribute__((used)) static void COMBO_Size( LPHEADCOMBO lphc )
{




  if( CB_GETTYPE(lphc) != CBS_SIMPLE )
  {
    int newComboHeight, curComboHeight, curComboWidth;
    RECT rc;

    GetWindowRect(lphc->self, &rc);
    curComboHeight = rc.bottom - rc.top;
    curComboWidth = rc.right - rc.left;
    newComboHeight = CBGetTextAreaHeight(lphc->self, lphc) + 2*COMBO_YBORDERSIZE();
    if( curComboHeight > newComboHeight )
    {
      TRACE("oldComboHeight=%d, newComboHeight=%d, oldDropBottom=%d, oldDropTop=%d\n",
            curComboHeight, newComboHeight, lphc->droppedRect.bottom,
            lphc->droppedRect.top);
      lphc->droppedRect.bottom = lphc->droppedRect.top + curComboHeight - newComboHeight;
    }



    if( curComboHeight != newComboHeight )
      SetWindowPos(lphc->self, 0, 0, 0, curComboWidth, newComboHeight,
            SWP_NOZORDER|SWP_NOMOVE|SWP_NOACTIVATE|SWP_NOREDRAW);
  }

  CBCalcPlacement(lphc->self,
    lphc,
    &lphc->textRect,
    &lphc->buttonRect,
    &lphc->droppedRect);

  CBResetPos( lphc, &lphc->textRect, &lphc->droppedRect, FALSE );
}
