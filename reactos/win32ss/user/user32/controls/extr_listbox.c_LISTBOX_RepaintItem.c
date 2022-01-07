
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_5__ {int style; scalar_t__ self; int horz_pos; int owner; scalar_t__ font; } ;
typedef int RECT ;
typedef int LPARAM ;
typedef TYPE_1__ LB_DESCR ;
typedef int INT ;
typedef scalar_t__ HFONT ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBRUSH ;


 int COLOR_GRAYTEXT ;
 int DCX_CACHE ;
 scalar_t__ GetControlColor (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ GetDCEx (scalar_t__,int ,int ) ;
 int GetSysColor (int ) ;
 int IsWindowEnabled (scalar_t__) ;
 int IsWindowVisible (scalar_t__) ;
 int LBS_DISPLAYCHANGED ;
 int LBS_NOREDRAW ;
 int LISTBOX_GetItemRect (TYPE_1__*,int ,int *) ;
 int LISTBOX_PaintItem (TYPE_1__*,scalar_t__,int *,int ,int ,int ) ;
 int ReleaseDC (scalar_t__,scalar_t__) ;
 scalar_t__ SelectObject (scalar_t__,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int SetTextColor (scalar_t__,int ) ;
 int SetWindowOrgEx (scalar_t__,int ,int ,int *) ;
 int TRUE ;
 int WM_CTLCOLORLISTBOX ;

__attribute__((used)) static void LISTBOX_RepaintItem( LB_DESCR *descr, INT index, UINT action )
{
    HDC hdc;
    RECT rect;
    HFONT oldFont = 0;
    HBRUSH hbrush, oldBrush = 0;


    if (!IsWindowVisible(descr->self)) return;
    if (descr->style & LBS_NOREDRAW)
    {
        descr->style |= LBS_DISPLAYCHANGED;
        return;
    }
    if (LISTBOX_GetItemRect( descr, index, &rect ) != 1) return;
    if (!(hdc = GetDCEx( descr->self, 0, DCX_CACHE ))) return;
    if (descr->font) oldFont = SelectObject( hdc, descr->font );



    hbrush = (HBRUSH)SendMessageW( descr->owner, WM_CTLCOLORLISTBOX,
       (WPARAM)hdc, (LPARAM)descr->self );

    if (hbrush) oldBrush = SelectObject( hdc, hbrush );
    if (!IsWindowEnabled(descr->self))
        SetTextColor( hdc, GetSysColor( COLOR_GRAYTEXT ) );
    SetWindowOrgEx( hdc, descr->horz_pos, 0, ((void*)0) );
    LISTBOX_PaintItem( descr, hdc, &rect, index, action, TRUE );
    if (oldFont) SelectObject( hdc, oldFont );
    if (oldBrush) SelectObject( hdc, oldBrush );
    ReleaseDC( descr->self, hdc );
}
