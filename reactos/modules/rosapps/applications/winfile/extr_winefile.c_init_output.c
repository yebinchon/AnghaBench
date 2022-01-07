
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {char num_sep; int spaceSize; int hfont; } ;
typedef int HWND ;
typedef int HFONT ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetNumberFormatW (int ,int ,char const*,int ,char*,int) ;
 int GetTextExtentPoint32W (int ,int ,int,int *) ;
 TYPE_1__ Globals ;
 int LOCALE_USER_DEFAULT ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int sSpace ;

__attribute__((used)) static void init_output(HWND hwnd)
{
 static const WCHAR s1000[] = {'1','0','0','0','\0'};
 WCHAR b[16];
 HFONT old_font;
 HDC hdc = GetDC(hwnd);

 if (GetNumberFormatW(LOCALE_USER_DEFAULT, 0, s1000, 0, b, 16) > 4)
  Globals.num_sep = b[1];
 else
  Globals.num_sep = '.';

 old_font = SelectObject(hdc, Globals.hfont);
 GetTextExtentPoint32W(hdc, sSpace, 1, &Globals.spaceSize);
 SelectObject(hdc, old_font);
 ReleaseDC(hwnd, hdc);
}
