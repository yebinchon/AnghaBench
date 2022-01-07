
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int bmWidth; int bmHeight; } ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; scalar_t__ biClrImportant; scalar_t__ biClrUsed; int biCompression; } ;
struct TYPE_8__ {TYPE_1__ bmiHeader; } ;
typedef int RECT ;
typedef size_t* PBYTE ;
typedef int INT ;
typedef int HWND ;
typedef int HDC ;
typedef int HBITMAP ;
typedef size_t DWORD ;
typedef int BOOL ;
typedef TYPE_2__ BITMAPINFO ;
typedef TYPE_3__ BITMAP ;


 int BI_RGB ;
 int CopyMemory (size_t*,size_t*,int) ;
 int DIB_RGB_COLORS ;
 int FALSE ;
 int GetBValue (size_t) ;
 int GetClientRect (int ,int *) ;
 int GetDIBits (int ,int ,int ,int,size_t*,TYPE_2__*,int ) ;
 int GetGValue (size_t) ;
 int GetObject (int ,int,TYPE_3__*) ;
 int GetRValue (size_t) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,size_t*) ;
 int InvalidateRect (int ,int *,int ) ;
 int ProcessHeap ;
 size_t RGB (int,int,int) ;
 int SetDIBits (int ,int ,int ,int ,size_t*,TYPE_2__*,int ) ;
 int TRUE ;

BOOL
DisplayInvertedColors(HWND hwnd,
                      HDC hdcMem,
                      HBITMAP hBitmap)
{
    BITMAPINFO bi;
    BITMAP bitmap;
    BOOL bRes;
    DWORD Count = 0;
    INT i, j;
    PBYTE pBits;
    RECT rc;

    GetObject(hBitmap,
              sizeof(BITMAP),
              &bitmap);


    bi.bmiHeader.biSize = sizeof(bi.bmiHeader);
    bi.bmiHeader.biWidth = bitmap.bmWidth;
    bi.bmiHeader.biHeight = bitmap.bmHeight;
    bi.bmiHeader.biPlanes = 1;
    bi.bmiHeader.biBitCount = 32;
    bi.bmiHeader.biCompression = BI_RGB;
    bi.bmiHeader.biSizeImage = bitmap.bmWidth * bitmap.bmHeight * 4;
    bi.bmiHeader.biClrUsed = 0;
    bi.bmiHeader.biClrImportant = 0;


    pBits = (PBYTE)HeapAlloc(ProcessHeap,
                             0,
                             bitmap.bmWidth * bitmap.bmHeight * 4);
    if (!pBits)
        return FALSE;


    bRes = GetDIBits(hdcMem,
                     hBitmap,
                     0,
                     bitmap.bmHeight,
                     pBits,
                     &bi,
                     DIB_RGB_COLORS);

    for (i = 0; i < bitmap.bmHeight; i++)
    {
        for (j = 0; j < bitmap.bmWidth; j++)
        {
            DWORD Val = 0;
            INT b, g, r;

            CopyMemory(&Val,
                       &pBits[Count],
                       4);

            b = 255 - GetRValue(Val);
            g = 255 - GetGValue(Val);
            r = 255 - GetBValue(Val);

            Val = RGB(b, g, r);

            CopyMemory(&pBits[Count],
                       &Val,
                       4);

            Count+=4;
        }
    }


    SetDIBits(hdcMem,
              hBitmap,
              0,
              bRes,
              pBits,
              &bi,
              DIB_RGB_COLORS);

    HeapFree(ProcessHeap,
             0,
             pBits);

    GetClientRect(hwnd,
                  &rc);

    InvalidateRect(hwnd,
                   &rc,
                   FALSE);

    return TRUE;
}
