
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int POINT ;
typedef int INT ;
typedef int HWND ;


 int HTHSCROLL ;
 int HTVSCROLL ;
 int SB_HORZ ;
 int SB_VERT ;
 int SCROLL_TrackScrollBar (int ,int ,int ) ;
 int SC_HSCROLL ;

void NC_TrackScrollBar( HWND hwnd, WPARAM wParam, POINT pt )
{
    INT scrollbar;

    if ((wParam & 0xfff0) == SC_HSCROLL)
    {
        if ((wParam & 0x0f) != HTHSCROLL) return;
        scrollbar = SB_HORZ;
    }
    else
    {
        if ((wParam & 0x0f) != HTVSCROLL) return;
        scrollbar = SB_VERT;
    }
    SCROLL_TrackScrollBar( hwnd, scrollbar, pt );
}
