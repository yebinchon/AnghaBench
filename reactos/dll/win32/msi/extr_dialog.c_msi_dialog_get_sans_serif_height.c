
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int lfFaceName; int lfHeight; } ;
struct TYPE_6__ {int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef int LONG ;
typedef TYPE_2__ LOGFONTW ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef scalar_t__ HDC ;
typedef scalar_t__ BOOL ;


 scalar_t__ CreateFontIndirectW (TYPE_2__*) ;
 int DeleteObject (scalar_t__) ;
 scalar_t__ GetDC (int ) ;
 int GetDeviceCaps (scalar_t__,int ) ;
 scalar_t__ GetTextMetricsW (scalar_t__,TYPE_1__*) ;
 int LOGPIXELSY ;
 int MulDiv (int,int ,int) ;
 int ReleaseDC (int ,scalar_t__) ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcpyW (int ,char const*) ;

__attribute__((used)) static INT msi_dialog_get_sans_serif_height( HWND hwnd )
{
    static const WCHAR szSansSerif[] = {
        'M','S',' ','S','a','n','s',' ','S','e','r','i','f',0 };
    LOGFONTW lf;
    TEXTMETRICW tm;
    BOOL r;
    LONG height = 0;
    HFONT hFont, hOldFont;
    HDC hdc;

    hdc = GetDC( hwnd );
    if (hdc)
    {
        memset( &lf, 0, sizeof lf );
        lf.lfHeight = MulDiv(12, GetDeviceCaps(hdc, LOGPIXELSY), 72);
        strcpyW( lf.lfFaceName, szSansSerif );
        hFont = CreateFontIndirectW(&lf);
        if (hFont)
        {
            hOldFont = SelectObject( hdc, hFont );
            r = GetTextMetricsW( hdc, &tm );
            if (r)
                height = tm.tmHeight;
            SelectObject( hdc, hOldFont );
            DeleteObject( hFont );
        }
        ReleaseDC( hwnd, hdc );
    }
    return height;
}
