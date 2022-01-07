
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int ANSI_CHARSET ;
 int ANTIALIASED_QUALITY ;
 int CLIP_DEFAULT_PRECIS ;
 scalar_t__ CreateFont (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DEFAULT_PITCH ;
 int DeleteObject (scalar_t__) ;
 int FW_BOLD ;
 int FW_NORMAL ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int LOGPIXELSY ;
 int MulDiv (int,int ,int) ;
 int OUT_DEFAULT_PRECIS ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ g_hFont ;

void SetMessageFont(HWND hwnd, TCHAR *szFontName, int nPointSize, BOOL fBold)
{
 int lfHeight;
 HDC hdc;
 HFONT hFont;

 hdc = GetDC(hwnd);

 lfHeight = -MulDiv(nPointSize, GetDeviceCaps(hdc, LOGPIXELSY), 72);

 ReleaseDC(hwnd, hdc);

 hFont = CreateFont(lfHeight, 0, 0, 0, fBold ? FW_BOLD: FW_NORMAL, 0, 0, 0,
  ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
  ANTIALIASED_QUALITY, DEFAULT_PITCH, szFontName);

 if(hFont != 0)
 {
  if(g_hFont != 0)
   DeleteObject(g_hFont);

  g_hFont = hFont;
 }
}
