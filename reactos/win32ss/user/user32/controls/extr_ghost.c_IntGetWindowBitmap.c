
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HWND ;
typedef int * HGDIOBJ ;
typedef int HDC ;
typedef int * HBITMAP ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int CAPTUREBLT ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int GetWindowDC (int ) ;
 int * IntCreate32BppBitmap (int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int SRCCOPY ;
 int * SelectObject (int ,int *) ;

__attribute__((used)) static HBITMAP
IntGetWindowBitmap(HWND hwnd, INT cx, INT cy)
{
    HBITMAP hbm = ((void*)0);
    HDC hdc, hdcMem;
    HGDIOBJ hbmOld;

    hdc = GetWindowDC(hwnd);
    if (!hdc)
        return ((void*)0);

    hdcMem = CreateCompatibleDC(hdc);
    if (!hdcMem)
        goto earth;

    hbm = IntCreate32BppBitmap(cx, cy);
    if (hbm)
    {
        hbmOld = SelectObject(hdcMem, hbm);
        BitBlt(hdcMem, 0, 0, cx, cy, hdc, 0, 0, SRCCOPY | CAPTUREBLT);
        SelectObject(hdcMem, hbmOld);
    }

    DeleteDC(hdcMem);

earth:
    ReleaseDC(hwnd, hdc);

    return hbm;
}
