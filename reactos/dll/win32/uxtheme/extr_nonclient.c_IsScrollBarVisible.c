
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int* rgstate; } ;
typedef TYPE_1__ SCROLLBARINFO ;
typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetScrollBarInfo (int ,int ,TYPE_1__*) ;
 int STATE_SYSTEM_OFFSCREEN ;

BOOL
IsScrollBarVisible(HWND hWnd, INT hBar)
{
  SCROLLBARINFO sbi = {sizeof(SCROLLBARINFO)};
  if(!GetScrollBarInfo(hWnd, hBar, &sbi))
    return FALSE;

  return !(sbi.rgstate[0] & STATE_SYSTEM_OFFSCREEN);
}
