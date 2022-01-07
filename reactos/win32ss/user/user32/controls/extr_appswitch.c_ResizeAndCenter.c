
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int AdjustWindowRectEx (TYPE_1__*,int ,int ,int ) ;
 int ExStyle ;
 int FALSE ;
 int GetSystemMetrics (int ) ;
 int MoveWindow (int ,int,int,int,int,int ) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int SetRect (TYPE_1__*,int,int,int,int) ;
 int Style ;
 TYPE_2__ ptStart ;

void ResizeAndCenter(HWND hwnd, int width, int height)
{
   int x, y;
   RECT Rect;

   int screenwidth = GetSystemMetrics(SM_CXSCREEN);
   int screenheight = GetSystemMetrics(SM_CYSCREEN);

   x = (screenwidth - width) / 2;
   y = (screenheight - height) / 2;

   SetRect(&Rect, x, y, x + width, y + height);
   AdjustWindowRectEx(&Rect, Style, FALSE, ExStyle);

   x = Rect.left;
   y = Rect.top;
   width = Rect.right - Rect.left;
   height = Rect.bottom - Rect.top;
   MoveWindow(hwnd, x, y, width, height, FALSE);

   ptStart.x = x;
   ptStart.y = y;
}
