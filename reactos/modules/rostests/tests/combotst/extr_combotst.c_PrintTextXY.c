
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetStockObject (int ) ;
 int ReleaseDC (int ,int ) ;
 int SYSTEM_FIXED_FONT ;
 int SelectObject (int ,int ) ;
 int TextOut (int ,int,int,char*,int) ;
 int ValidateRect (int ,int *) ;
 int g_hwnd ;

void PrintTextXY(char* Text,int x,int y,int len, RECT rect)
    {
    HDC hdc;
    hdc = GetDC (g_hwnd);
    SelectObject (hdc, GetStockObject (SYSTEM_FIXED_FONT));

    TextOut (hdc, x,y,Text,len);
    ReleaseDC (g_hwnd, hdc);

    ValidateRect (g_hwnd, &rect);
    }
