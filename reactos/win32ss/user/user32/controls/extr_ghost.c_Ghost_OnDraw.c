
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bm ;
struct TYPE_6__ {int bmHeight; int bmWidth; } ;
struct TYPE_5__ {int hbm32bpp; } ;
typedef int HWND ;
typedef int HGDIOBJ ;
typedef scalar_t__ HDC ;
typedef TYPE_1__ GHOST_DATA ;
typedef TYPE_2__ BITMAP ;


 int BitBlt (scalar_t__,int ,int ,int ,int ,scalar_t__,int ,int ,int) ;
 int CAPTUREBLT ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int DeleteDC (scalar_t__) ;
 int GetObject (int ,int,TYPE_2__*) ;
 TYPE_1__* Ghost_GetData (int ) ;
 int SRCCOPY ;
 int SelectObject (scalar_t__,int ) ;

__attribute__((used)) static void
Ghost_OnDraw(HWND hwnd, HDC hdc)
{
    BITMAP bm;
    HDC hdcMem;
    GHOST_DATA *pData = Ghost_GetData(hwnd);

    if (!pData || !GetObject(pData->hbm32bpp, sizeof(bm), &bm))
        return;

    hdcMem = CreateCompatibleDC(hdc);
    if (hdcMem)
    {
        HGDIOBJ hbmOld = SelectObject(hdcMem, pData->hbm32bpp);
        BitBlt(hdc, 0, 0, bm.bmWidth, bm.bmHeight,
               hdcMem, 0, 0, SRCCOPY | CAPTUREBLT);
        SelectObject(hdcMem, hbmOld);
        DeleteDC(hdcMem);
    }
}
