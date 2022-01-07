
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cy; int cx; } ;
typedef TYPE_1__ SIZE ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef scalar_t__ HICON ;
typedef int DWORD ;


 int HICON_GWL_OFFSET ;
 int SS_CENTERIMAGE ;
 int SS_ICON ;
 int SS_REALSIZECONTROL ;
 int SS_TYPEMASK ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 scalar_t__ SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int WARN (char*) ;
 int get_icon_size (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static HICON STATIC_SetIcon( HWND hwnd, HICON hicon, DWORD style )
{
    HICON prevIcon;
    SIZE size;

    if ((style & SS_TYPEMASK) != SS_ICON) return 0;
    if (hicon && !get_icon_size( hicon, &size ))
    {
        WARN("hicon != 0, but invalid\n");
        return 0;
    }
    prevIcon = (HICON)SetWindowLongPtrW( hwnd, HICON_GWL_OFFSET, (LONG_PTR)hicon );
    if (hicon && !(style & SS_CENTERIMAGE) && !(style & SS_REALSIZECONTROL))
    {
        {
            SetWindowPos( hwnd, 0, 0, 0, size.cx, size.cy, SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOZORDER );
        }
    }
    return prevIcon;
}
