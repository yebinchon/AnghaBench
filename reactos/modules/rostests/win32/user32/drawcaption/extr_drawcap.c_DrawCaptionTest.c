
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_4__ {int bottom; int left; int right; int top; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HDC ;
typedef int DWORD ;


 int CapTest (int ,int ,TYPE_1__*,char*,int,int *,int ) ;
 int DC_ACTIVE ;
 int DC_ICON ;
 int DC_INBUTTON ;
 int DC_TEXT ;
 int GetClientRect (int ,TYPE_1__*) ;

VOID DrawCaptionTest(HWND hWnd, HDC hDc, WCHAR *AddonStr, DWORD Addon)
{
 RECT Rect;
 GetClientRect(hWnd, &Rect);
 Rect.bottom = 30;
 Rect.left = 10;
 Rect.right-=10;
 Rect.top = 10;

 CapTest(hWnd, hDc, &Rect, L"DC_TEXT:", DC_TEXT, AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ACTIVE:",
  DC_TEXT | DC_ACTIVE,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ICON:" ,
  DC_TEXT | DC_ICON,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ACTIVE | DC_ICON:" ,
  DC_TEXT | DC_ACTIVE | DC_ICON,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_INBUTTON:" ,
  DC_TEXT | DC_INBUTTON,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ACTIVE | DC_INBUTTON:" ,
  DC_TEXT | DC_ACTIVE | DC_INBUTTON,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ICON | DC_INBUTTON:" ,
  DC_TEXT | DC_ICON | DC_INBUTTON,
  AddonStr, Addon);

 CapTest(hWnd, hDc, &Rect,
  L"DC_TEXT | DC_ACTIVE | DC_ICON | DC_INBUTTON:" ,
  DC_TEXT | DC_ACTIVE | DC_ICON | DC_INBUTTON,
  AddonStr, Addon);

}
