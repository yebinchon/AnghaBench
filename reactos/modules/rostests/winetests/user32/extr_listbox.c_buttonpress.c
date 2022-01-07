
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int LPARAM ;
typedef int HWND ;


 int MK_LBUTTON ;
 int REDRAW ;
 int SendMessageA (int ,int ,int ,int) ;
 int WAIT ;
 int WM_LBUTTONDOWN ;
 int WM_LBUTTONUP ;

__attribute__((used)) static void
buttonpress (HWND handle, WORD x, WORD y)
{
  LPARAM lp=x+(y<<16);

  WAIT;
  SendMessageA(handle, WM_LBUTTONDOWN, MK_LBUTTON, lp);
  SendMessageA(handle, WM_LBUTTONUP, 0, lp);
  REDRAW;
}
