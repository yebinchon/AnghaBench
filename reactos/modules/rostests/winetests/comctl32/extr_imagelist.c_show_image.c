
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int HWND ;
typedef int HIMAGELIST ;
typedef int * HDC ;
typedef scalar_t__ BOOL ;


 int BitBlt (int *,int ,int ,int,int,int *,int,int,int ) ;
 int * GetDC (int ) ;
 int ILD_TRANSPARENT ;
 int ReleaseDC (int ,int *) ;
 int SRCCOPY ;
 int SetWindowTextA (int ,int ) ;
 int force_redraw (int ) ;
 int pImageList_Draw (int ,int,int *,int ,int ,int ) ;
 int winetest_interactive ;

__attribute__((used)) static HDC show_image(HWND hwnd, HIMAGELIST himl, int idx, int size,
                      LPCSTR loc, BOOL clear)
{
    HDC hdc;

    if (!winetest_interactive || !himl) return ((void*)0);

    SetWindowTextA(hwnd, loc);
    hdc = GetDC(hwnd);
    pImageList_Draw(himl, idx, hdc, 0, 0, ILD_TRANSPARENT);

    force_redraw(hwnd);

    if (clear)
    {
        BitBlt(hdc, 0, 0, size, size, hdc, size+1, size+1, SRCCOPY);
        ReleaseDC(hwnd, hdc);
        hdc = ((void*)0);
    }

    return hdc;
}
