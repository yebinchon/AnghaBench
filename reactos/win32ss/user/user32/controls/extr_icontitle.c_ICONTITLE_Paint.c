
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int logBrush ;
typedef int buffer ;
typedef int WCHAR ;
struct TYPE_3__ {int lbColor; } ;
typedef int RECT ;
typedef int LPPOINT ;
typedef TYPE_1__ LOGBRUSH ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef int COLORREF ;
typedef int BOOL ;


 int BLACK_BRUSH ;
 int COLOR_ACTIVECAPTION ;
 int COLOR_CAPTIONTEXT ;
 int DPtoLP (int ,int ,int) ;
 int DT_CENTER ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DT_WORDBREAK ;
 int DrawTextW (int ,int *,int,int *,int) ;
 int FillRect (int ,int *,scalar_t__) ;
 int GCLP_HBRBACKGROUND ;
 int GWL_STYLE ;
 int GetBValue (int ) ;
 scalar_t__ GetClassLongPtrW (int ,int ) ;
 int GetClientRect (int ,int *) ;
 int GetGValue (int ) ;
 int GetObjectA (scalar_t__,int,TYPE_1__*) ;
 int GetRValue (int ) ;
 scalar_t__ GetStockObject (int ) ;
 int GetSysColor (int ) ;
 scalar_t__ GetSysColorBrush (int ) ;
 int GetWindowLongPtrA (int ,int ) ;
 int GetWindowTextW (int ,int *,int) ;
 int RGB (int,int,int) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRANSPARENT ;
 int WHITE_BRUSH ;
 int WS_CHILD ;
 scalar_t__ bMultiLineTitle ;
 scalar_t__ hIconTitleFont ;

__attribute__((used)) static BOOL ICONTITLE_Paint( HWND hwnd, HWND owner, HDC hDC, BOOL bActive )
{
    RECT rect;
    HFONT hPrevFont;
    HBRUSH hBrush;
    COLORREF textColor = 0;

    if( bActive )
    {
 hBrush = GetSysColorBrush(COLOR_ACTIVECAPTION);
 textColor = GetSysColor(COLOR_CAPTIONTEXT);
    }
    else
    {
        if( GetWindowLongPtrA( hwnd, GWL_STYLE ) & WS_CHILD )
 {
     hBrush = (HBRUSH) GetClassLongPtrW(hwnd, GCLP_HBRBACKGROUND);
     if( hBrush )
     {
  INT level;
  LOGBRUSH logBrush;
  GetObjectA( hBrush, sizeof(logBrush), &logBrush );
  level = GetRValue(logBrush.lbColor) +
      GetGValue(logBrush.lbColor) +
         GetBValue(logBrush.lbColor);
  if( level < (0x7F * 3) )
      textColor = RGB( 0xFF, 0xFF, 0xFF );
     }
     else
  hBrush = GetStockObject( WHITE_BRUSH );
 }
 else
 {
     hBrush = GetStockObject( BLACK_BRUSH );
     textColor = RGB( 0xFF, 0xFF, 0xFF );
 }
    }

    GetClientRect( hwnd, &rect );
    DPtoLP( hDC, (LPPOINT)&rect, 2 );
    FillRect( hDC, &rect, hBrush );

    hPrevFont = SelectObject( hDC, hIconTitleFont );
    if( hPrevFont )
    {
 WCHAR buffer[80];

        INT length = GetWindowTextW( owner, buffer, sizeof(buffer)/sizeof(buffer[0]) );
        SetTextColor( hDC, textColor );
        SetBkMode( hDC, TRANSPARENT );

        DrawTextW( hDC, buffer, length, &rect, DT_CENTER | DT_NOPREFIX |
                   DT_WORDBREAK | ((bMultiLineTitle) ? 0 : DT_SINGLELINE) );

 SelectObject( hDC, hPrevFont );
    }
    return (hPrevFont != 0);
}
