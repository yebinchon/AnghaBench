
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int self; } ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* LPHEADCOMBO ;


 int CBGetTextAreaHeight (int ,TYPE_2__*) ;
 int COMBO_YBORDERSIZE () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,scalar_t__,int,int) ;

__attribute__((used)) static void CBForceDummyResize(
  LPHEADCOMBO lphc)
{
  RECT windowRect;
  int newComboHeight;

  newComboHeight = CBGetTextAreaHeight(lphc->self,lphc) + 2*COMBO_YBORDERSIZE();

  GetWindowRect(lphc->self, &windowRect);
  SetWindowPos( lphc->self,
  ((void*)0),
  0, 0,
  windowRect.right - windowRect.left,
  newComboHeight,
  SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE );
}
