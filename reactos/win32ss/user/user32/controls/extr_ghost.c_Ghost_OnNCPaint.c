
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int HWND ;
typedef scalar_t__ HRGN ;
typedef scalar_t__ HDC ;
typedef scalar_t__ BOOL ;


 int DefWindowProcA (int ,int ,int ,int ) ;
 int DefWindowProcW (int ,int ,int ,int ) ;
 scalar_t__ GetWindowDC (int ) ;
 int Ghost_OnDraw (int ,scalar_t__) ;
 int ReleaseDC (int ,scalar_t__) ;
 int WM_NCPAINT ;

__attribute__((used)) static void
Ghost_OnNCPaint(HWND hwnd, HRGN hrgn, BOOL bUnicode)
{
    HDC hdc;


    if (bUnicode)
        DefWindowProcW(hwnd, WM_NCPAINT, (WPARAM)hrgn, 0);
    else
        DefWindowProcA(hwnd, WM_NCPAINT, (WPARAM)hrgn, 0);


    hdc = GetWindowDC(hwnd);
    if (hdc)
    {
        Ghost_OnDraw(hwnd, hdc);
        ReleaseDC(hwnd, hdc);
    }
}
