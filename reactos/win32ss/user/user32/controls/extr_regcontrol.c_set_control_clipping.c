
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef scalar_t__ HRGN ;
typedef int HDC ;


 scalar_t__ CreateRectRgn (int ,int ,int ,int ) ;
 int DPtoLP (int ,int *,int) ;
 int DeleteObject (scalar_t__) ;
 int GetClipRgn (int ,scalar_t__) ;
 int GetLayout (int ) ;
 int IntersectClipRect (int ,int ,int ,int ,int ) ;
 int LAYOUT_RTL ;

HRGN set_control_clipping( HDC hdc, const RECT *rect )
{
    RECT rc = *rect;
    HRGN hrgn = CreateRectRgn( 0, 0, 0, 0 );

    if (GetClipRgn( hdc, hrgn ) != 1)
    {
        DeleteObject( hrgn );
        hrgn = 0;
    }
    DPtoLP( hdc, (POINT *)&rc, 2 );
    if (GetLayout( hdc ) & LAYOUT_RTL)
    {
        rc.left++;
        rc.right++;
    }
    IntersectClipRect( hdc, rc.left, rc.top, rc.right, rc.bottom );
    return hrgn;
}
