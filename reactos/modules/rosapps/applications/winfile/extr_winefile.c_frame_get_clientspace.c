
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int bottom; int top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_10__ {TYPE_1__ rcNormalPosition; } ;
typedef TYPE_2__ WINDOWPLACEMENT ;
struct TYPE_12__ {int hstatusbar; int hdrivebar; int htoolbar; } ;
struct TYPE_11__ {int left; int top; int bottom; scalar_t__ right; } ;
typedef TYPE_3__ RECT ;
typedef TYPE_3__* PRECT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_3__*) ;
 int GetSystemMetrics (int ) ;
 int GetWindowPlacement (int ,TYPE_2__*) ;
 TYPE_6__ Globals ;
 int IsIconic (int ) ;
 scalar_t__ IsWindowVisible (int ) ;
 int SM_CXEDGE ;
 int SM_CXSIZEFRAME ;
 int SM_CYCAPTION ;
 int SM_CYEDGE ;
 int SM_CYMENUSIZE ;
 int SM_CYSIZEFRAME ;

__attribute__((used)) static void frame_get_clientspace(HWND hwnd, PRECT prect)
{
 RECT rt;

 if (!IsIconic(hwnd))
  GetClientRect(hwnd, prect);
 else {
  WINDOWPLACEMENT wp;

  GetWindowPlacement(hwnd, &wp);

  prect->left = prect->top = 0;
  prect->right = wp.rcNormalPosition.right-wp.rcNormalPosition.left-
      2*(GetSystemMetrics(SM_CXSIZEFRAME)+GetSystemMetrics(SM_CXEDGE));
  prect->bottom = wp.rcNormalPosition.bottom-wp.rcNormalPosition.top-
      2*(GetSystemMetrics(SM_CYSIZEFRAME)+GetSystemMetrics(SM_CYEDGE))-
      GetSystemMetrics(SM_CYCAPTION)-GetSystemMetrics(SM_CYMENUSIZE);
 }

 if (IsWindowVisible(Globals.htoolbar)) {
  GetClientRect(Globals.htoolbar, &rt);
  prect->top += rt.bottom+2;
 }

 if (IsWindowVisible(Globals.hdrivebar)) {
  GetClientRect(Globals.hdrivebar, &rt);
  prect->top += rt.bottom+2;
 }

 if (IsWindowVisible(Globals.hstatusbar)) {
  GetClientRect(Globals.hstatusbar, &rt);
  prect->bottom -= rt.bottom;
 }
}
