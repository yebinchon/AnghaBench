
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int str ;
typedef char WCHAR ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_6__ {int right; int left; int bottom; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int INT ;
typedef int HWND ;
typedef int HFONT ;
typedef int HDC ;
typedef int BOOL ;


 int DT_CALCRECT ;
 int DT_CENTER ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DT_WORDBREAK ;
 int DrawTextW (int ,char*,int,TYPE_1__*,int) ;
 int FALSE ;
 int GetDC (int ) ;
 int GetParent (int ) ;
 int GetSystemMetrics (int ) ;
 int GetWindowTextW (int ,char*,int) ;
 int MapWindowPoints (int ,int ,TYPE_2__*,int) ;
 int ReleaseDC (int ,int ) ;
 int SM_CXBORDER ;
 int SM_CXICON ;
 int SM_CXICONSPACING ;
 int SM_CYBORDER ;
 int SM_CYICON ;
 int SWP_NOACTIVATE ;
 int SelectObject (int ,int ) ;
 int SetRect (TYPE_1__*,int ,int ,int,int) ;
 int SetWindowPos (int ,int ,int,int,int,int,int ) ;
 int TRUE ;
 scalar_t__ bMultiLineTitle ;
 int hIconTitleFont ;
 int strcpyW (char*,char const*) ;
 int strlenW (char*) ;

__attribute__((used)) static BOOL ICONTITLE_SetTitlePos( HWND hwnd, HWND owner )
{
    static const WCHAR emptyTitleText[] = {'<','.','.','.','>',0};
    WCHAR str[80];
    HDC hDC;
    HFONT hPrevFont;
    RECT rect;
    INT cx, cy;
    POINT pt;

    int length = GetWindowTextW( owner, str, sizeof(str)/sizeof(WCHAR) );

    while (length && str[length - 1] == ' ')
        str[--length] = 0;

    if( !length )
    {
        strcpyW( str, emptyTitleText );
        length = strlenW( str );
    }

    if (!(hDC = GetDC( hwnd ))) return FALSE;

    hPrevFont = SelectObject( hDC, hIconTitleFont );

    SetRect( &rect, 0, 0, GetSystemMetrics(SM_CXICONSPACING) -
             GetSystemMetrics(SM_CXBORDER) * 2,
             GetSystemMetrics(SM_CYBORDER) * 2 );

    DrawTextW( hDC, str, length, &rect, DT_CALCRECT | DT_CENTER | DT_NOPREFIX | DT_WORDBREAK |
               (( bMultiLineTitle ) ? 0 : DT_SINGLELINE) );

    SelectObject( hDC, hPrevFont );
    ReleaseDC( hwnd, hDC );

    cx = rect.right - rect.left + 4 * GetSystemMetrics(SM_CXBORDER);
    cy = rect.bottom - rect.top;

    pt.x = (GetSystemMetrics(SM_CXICON) - cx) / 2;
    pt.y = GetSystemMetrics(SM_CYICON);


    MapWindowPoints( owner, GetParent(hwnd), &pt, 1 );

    SetWindowPos( hwnd, owner, pt.x, pt.y, cx, cy, SWP_NOACTIVATE );
    return TRUE;
}
