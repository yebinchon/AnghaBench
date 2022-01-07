
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_5__ {scalar_t__ cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef int POINT ;
typedef int LPARAM ;
typedef scalar_t__ HFONT ;
typedef int HDC ;


 int CB_SETDROPPEDWIDTH ;
 int GetDC (int ) ;
 int GetTextExtentPointU (int ,int ,TYPE_1__*) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SelectObject (int ,scalar_t__) ;
 int SendMessage (int ,int ,int ,int ) ;
 scalar_t__ SendMessageA (int ,int ,int ,int ) ;
 int WM_GETFONT ;
 int hBootType ;
 int hMainDialog ;
 int * image_path ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int safe_release_dc (int ,int ) ;
 int short_image_path ;

void SetBootTypeDropdownWidth(void)
{
 HDC hDC;
 HFONT hFont;
 SIZE sz;
 RECT rc;

 if (image_path == ((void*)0))
  return;

 GetWindowRect(hBootType, &rc);
 MapWindowPoints(((void*)0), hMainDialog, (POINT*)&rc, 2);
 hDC = GetDC(hBootType);
 hFont = (HFONT)SendMessageA(hBootType, WM_GETFONT, 0, 0);
 SelectObject(hDC, hFont);
 GetTextExtentPointU(hDC, short_image_path, &sz);
 safe_release_dc(hBootType, hDC);
 SendMessage(hBootType, CB_SETDROPPEDWIDTH, (WPARAM)max(sz.cx + 10, rc.right - rc.left), (LPARAM)0);
}
