
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int avg_char_width; int self; scalar_t__ font; } ;
struct TYPE_7__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;
typedef scalar_t__ HFONT ;
typedef int HDC ;


 int DCX_CACHE ;
 int ERR (char*) ;
 int FALSE ;
 int GetDCEx (int ,int ,int ) ;
 int GetTextExtentPointA (int ,char const*,int,TYPE_1__*) ;
 int IS_OWNERDRAW (TYPE_2__*) ;
 int LISTBOX_SetItemHeight (TYPE_2__*,int ,int,int ) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;

__attribute__((used)) static INT LISTBOX_SetFont( LB_DESCR *descr, HFONT font )
{
    HDC hdc;
    HFONT oldFont = 0;
    const char *alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    SIZE sz;

    descr->font = font;

    if (!(hdc = GetDCEx( descr->self, 0, DCX_CACHE )))
    {
        ERR("unable to get DC.\n" );
        return 16;
    }
    if (font) oldFont = SelectObject( hdc, font );
    GetTextExtentPointA( hdc, alphabet, 52, &sz);
    if (oldFont) SelectObject( hdc, oldFont );
    ReleaseDC( descr->self, hdc );

    descr->avg_char_width = (sz.cx / 26 + 1) / 2;
    if (!IS_OWNERDRAW(descr))
        LISTBOX_SetItemHeight( descr, 0, sz.cy, FALSE );
    return sz.cy;
}
