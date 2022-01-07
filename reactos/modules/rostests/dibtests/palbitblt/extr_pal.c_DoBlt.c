
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int * HWND ;
typedef int HDC ;
typedef int HBITMAP ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int * GetActiveWindow () ;
 int GetClientRect (int *,TYPE_1__*) ;
 int GetDC (int *) ;
 int ReleaseDC (int *,int ) ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;

void DoBlt(HBITMAP hBM)
{
 HDC hDC,Context;
 HWND ActiveWindow;
 RECT dest;
 HBITMAP dflBmp;

 if((ActiveWindow = GetActiveWindow()) == ((void*)0))
  return;

 hDC = GetDC(ActiveWindow);
 GetClientRect(ActiveWindow,&dest);

 Context = CreateCompatibleDC(0);
 dflBmp = SelectObject(Context, hBM);
 BitBlt(hDC, 0, 0, dest.right, dest.bottom, Context, 0, 0, SRCCOPY);
 SelectObject(Context, dflBmp);
 DeleteDC(Context);
 DeleteObject(dflBmp);
 ReleaseDC(ActiveWindow, hDC);
}
