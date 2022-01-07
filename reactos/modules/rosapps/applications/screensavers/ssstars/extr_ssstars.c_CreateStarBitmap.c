
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bi ;
typedef size_t UINT ;
struct TYPE_9__ {int bmWidth; int bmHeight; } ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; } ;
struct TYPE_8__ {TYPE_1__ bmiHeader; } ;
typedef scalar_t__ LPBYTE ;
typedef int HWND ;
typedef scalar_t__ HINSTANCE ;
typedef scalar_t__ HGDIOBJ ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int DWORD ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;
typedef TYPE_3__ BITMAP ;


 int BI_RGB ;
 int BitBlt (int ,int ,int ,int,int,int ,int ,int ,int ) ;
 int CreateCompatibleDC (int ) ;
 scalar_t__ CreateDIBSection (int ,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (scalar_t__) ;
 int GWLP_HINSTANCE ;
 int GetObject (scalar_t__,int,TYPE_3__*) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int IDB_STAR ;
 int IMAGE_BITMAP ;
 int LR_CREATEDIBSECTION ;
 int LR_DEFAULTSIZE ;
 scalar_t__ LoadImage (scalar_t__,int ,int ,int ,int ,int) ;
 int MAKEINTRESOURCE (int ) ;
 int SRCCOPY ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int ZeroMemory (TYPE_2__*,int) ;

__attribute__((used)) static HBITMAP CreateStarBitmap(HWND hWnd, HDC hDC)
{
    BITMAPINFO bi;
    LPBYTE lpBits;
    LPBYTE *lppBits;
    HBITMAP hTextBmp, hFileBmp;
    HDC hTextDC, hFileDC;
    HGDIOBJ hOldText, hOldFile;
    UINT i;
    DWORD *Ptr32;
    BITMAP bm;
    HINSTANCE hInstance;


    hInstance = (HINSTANCE)GetWindowLongPtr(hWnd, GWLP_HINSTANCE);


    hFileBmp = (HBITMAP)
              LoadImage(
                    hInstance,
                    MAKEINTRESOURCE(IDB_STAR),
                    IMAGE_BITMAP,
                    0, 0,
                    LR_CREATEDIBSECTION | LR_DEFAULTSIZE
              );


    GetObject(hFileBmp, sizeof(BITMAP), &bm);


    ZeroMemory(&bi, sizeof(bi));

    bi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth = bm.bmWidth;
    bi.bmiHeader.biHeight = -bm.bmHeight;
    bi.bmiHeader.biPlanes = 1;
    bi.bmiHeader.biBitCount = 32;
    bi.bmiHeader.biCompression = BI_RGB;


    lppBits = &lpBits;

    hTextBmp = CreateDIBSection(hDC,
                                (BITMAPINFO*)&bi,
                                DIB_RGB_COLORS,
                                (void**)lppBits,
                                ((void*)0),
                                0);






    hTextDC = CreateCompatibleDC(hDC);
    hFileDC = CreateCompatibleDC(hDC);

    hOldText = SelectObject(hTextDC, hTextBmp);
    hOldFile = SelectObject(hFileDC, hFileBmp);

    BitBlt(hTextDC, 0, 0, bm.bmWidth, bm.bmHeight, hFileDC, 0, 0, SRCCOPY);

    SelectObject(hTextDC, hOldText);
    SelectObject(hFileDC, hOldFile);

    DeleteDC(hTextDC);
    DeleteDC(hFileDC);


    DeleteObject(hFileBmp);

    GetObject(hTextBmp, sizeof(BITMAP), &bm);


    for (Ptr32=(DWORD *)lpBits, i=0; i < (UINT)(bm.bmWidth * bm.bmHeight); i++)
    {
        DWORD Color = Ptr32[i] & 0x00FFFFFF;
        DWORD Alpha = Color & 0xFF;

        Color |= Alpha << 24;

        Ptr32[i] = Color;
    }

    return hTextBmp;
}
