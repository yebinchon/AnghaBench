
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biSize; int biBitCount; int biPlanes; int biWidth; int biHeight; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int RGBQUAD ;
typedef TYPE_2__* PBITMAPINFO ;
typedef int INT ;
typedef int * HFONT ;
typedef int HDC ;
typedef int * HBITMAP ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BmpInfo ;
typedef int BYTE ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int * CreateCompatibleBitmap (int ,int ,int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int GetDIBits (int ,int *,int ,int ,int *,TYPE_2__*,int ) ;
 int GetLastError () ;
 int HEIGHT ;
 int RGB (int,int,int) ;
 int * SelectObject (int ,int *) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRUE ;
 int TextOutA (int ,int ,int ,int *,int) ;
 int WIDTH ;
 int ZeroMemory (int **,int) ;
 int fprintf (int ,char*,int ) ;
 int stderr ;

__attribute__((used)) static BOOL PlotCharacter(HDC hDC, HFONT hFont, INT XOffset, INT YOffset, CHAR Character, DWORD BmpBits[])
{
    BOOL bReturnValue = FALSE;
    HBITMAP hOldBmp;
    HFONT hOldFont;
    HBITMAP hBmp = ((void*)0);
    BYTE BmpInfo[sizeof(BITMAPINFO) + sizeof(RGBQUAD)];
    PBITMAPINFO pBmpInfo = (PBITMAPINFO)&BmpInfo;

    hBmp = CreateCompatibleBitmap(hDC, WIDTH, HEIGHT);
    if (!hBmp)
    {
        fprintf(stderr, "CreateCompatibleBitmap failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    hOldBmp = SelectObject(hDC, hBmp);
    hOldFont = SelectObject(hDC, hFont);
    SetBkColor(hDC, RGB(0, 0, 0));
    SetTextColor(hDC, RGB(255, 255, 255));
    TextOutA(hDC, XOffset, YOffset, &Character, 1);






    ZeroMemory(&BmpInfo, sizeof(BmpInfo));
    pBmpInfo->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    pBmpInfo->bmiHeader.biHeight = -HEIGHT;
    pBmpInfo->bmiHeader.biWidth = WIDTH;
    pBmpInfo->bmiHeader.biBitCount = 1;
    pBmpInfo->bmiHeader.biPlanes = 1;

    bReturnValue = TRUE;

    if (!GetDIBits(hDC, hBmp, 0, HEIGHT, BmpBits, pBmpInfo, 0))
    {
        fprintf(stderr, "GetDIBits failed with error %lu!\n", GetLastError());
        bReturnValue = FALSE;
    }

    SelectObject(hDC, hOldBmp);
    SelectObject(hDC, hOldFont);

Cleanup:
    if (hBmp)
        DeleteObject(hBmp);

    return bReturnValue;
}
