
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hmdiclient; int hstatusbar; int hdrivebar; int htoolbar; } ;
struct TYPE_7__ {int top; int bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_6__ {int bottom; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PRECT ;
typedef int LPARAM ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 TYPE_4__ Globals ;
 scalar_t__ IsWindowVisible (int ) ;
 int MoveWindow (int ,scalar_t__,int,scalar_t__,int,int ) ;
 int SB_SETPARTS ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;
 int WM_SIZE ;

__attribute__((used)) static void resize_frame_rect(HWND hwnd, PRECT prect)
{
 int new_top;
 RECT rt;

 if (IsWindowVisible(Globals.htoolbar)) {
  SendMessageW(Globals.htoolbar, WM_SIZE, 0, 0);
  GetClientRect(Globals.htoolbar, &rt);
  prect->top = rt.bottom+3;
  prect->bottom -= rt.bottom+3;
 }

 if (IsWindowVisible(Globals.hdrivebar)) {
  SendMessageW(Globals.hdrivebar, WM_SIZE, 0, 0);
  GetClientRect(Globals.hdrivebar, &rt);
  new_top = --prect->top + rt.bottom+3;
  MoveWindow(Globals.hdrivebar, 0, prect->top, rt.right, new_top, TRUE);
  prect->top = new_top;
  prect->bottom -= rt.bottom+2;
 }

 if (IsWindowVisible(Globals.hstatusbar)) {
  int parts[] = {300, 500};

  SendMessageW(Globals.hstatusbar, WM_SIZE, 0, 0);
  SendMessageW(Globals.hstatusbar, SB_SETPARTS, 2, (LPARAM)&parts);
  GetClientRect(Globals.hstatusbar, &rt);
  prect->bottom -= rt.bottom;
 }

 MoveWindow(Globals.hmdiclient, prect->left-1,prect->top-1,prect->right+2,prect->bottom+1, TRUE);
}
