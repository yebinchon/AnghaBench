
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int LPCWSTR ;
typedef int HGDIOBJ ;
typedef int HDC ;
typedef int COLORREF ;


 int DEFAULT_GUI_FONT ;
 int GetStockObject (int ) ;
 int RGB (int,int,int) ;
 int SelectObject (int ,int ) ;
 int SetTextAlign (int ,int) ;
 int SetTextColor (int ,int ) ;
 int TA_LEFT ;
 int TA_TOP ;
 int TextOutW (int ,int ,int ,int ,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static void ME_DebugWrite(HDC hDC, const POINT *pt, LPCWSTR szText) {
  int align = SetTextAlign(hDC, TA_LEFT|TA_TOP);
  HGDIOBJ hFont = SelectObject(hDC, GetStockObject(DEFAULT_GUI_FONT));
  COLORREF color = SetTextColor(hDC, RGB(128,128,128));
  TextOutW(hDC, pt->x, pt->y, szText, lstrlenW(szText));
  SelectObject(hDC, hFont);
  SetTextAlign(hDC, align);
  SetTextColor(hDC, color);
}
