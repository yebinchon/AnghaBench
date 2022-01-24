#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bi ;
typedef  size_t UINT ;
struct TYPE_9__ {int bmWidth; int bmHeight; } ;
struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_8__ {TYPE_1__ bmiHeader; } ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HINSTANCE ;
typedef  scalar_t__ HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;
typedef  TYPE_3__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDB_STAR ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int LR_CREATEDIBSECTION ; 
 int LR_DEFAULTSIZE ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

__attribute__((used)) static HBITMAP FUNC11(HWND hWnd, HDC hDC)
{
    BITMAPINFO bi;
    LPBYTE     lpBits;
    LPBYTE    *lppBits;
    HBITMAP    hTextBmp, hFileBmp;
    HDC        hTextDC, hFileDC;
    HGDIOBJ    hOldText, hOldFile;
    UINT       i;
    DWORD     *Ptr32;
    BITMAP     bm;
    HINSTANCE  hInstance;

    // Get instance for loading the texture
    hInstance = (HINSTANCE)FUNC6(hWnd, GWLP_HINSTANCE);

    // Load the texture
    hFileBmp = (HBITMAP)
              FUNC7(
                    hInstance,
                    FUNC8(IDB_STAR),
                    IMAGE_BITMAP,
                    0, 0,
                    LR_CREATEDIBSECTION | LR_DEFAULTSIZE
              );

    // Get texture specs
    FUNC5(hFileBmp, sizeof(BITMAP), &bm);

    // Allocate new 32 bit texture
    FUNC10(&bi, sizeof(bi));

    bi.bmiHeader.biSize        = sizeof(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth       = bm.bmWidth;
    bi.bmiHeader.biHeight      = -bm.bmHeight;
    bi.bmiHeader.biPlanes      = 1;
    bi.bmiHeader.biBitCount    = 32;
    bi.bmiHeader.biCompression = BI_RGB;

    // Makes GCC happy ;-|
    lppBits = &lpBits;

    hTextBmp = FUNC2(hDC,
                                (BITMAPINFO*)&bi,
                                DIB_RGB_COLORS,
                                (void**)lppBits,
                                NULL,
                                0);

    // Save new texture specs
//    GetObject(hTextBmp, sizeof(BITMAP), &bmStarTex);
//    bmStarTex.bmBits = lpBits;

    // Copy 24 bit texture in 32 texture
    hTextDC = FUNC1(hDC);
    hFileDC = FUNC1(hDC);

    hOldText = FUNC9(hTextDC, hTextBmp);
    hOldFile = FUNC9(hFileDC, hFileBmp);

    FUNC0(hTextDC, 0, 0, bm.bmWidth, bm.bmHeight, hFileDC, 0, 0, SRCCOPY);

    FUNC9(hTextDC, hOldText);
    FUNC9(hFileDC, hOldFile);

    FUNC3(hTextDC);
    FUNC3(hFileDC);

    // Delete 24 bit texture
    FUNC4(hFileBmp);

    FUNC5(hTextBmp, sizeof(BITMAP), &bm);

    // Apply ALPHA channel to new texture
    for (Ptr32=(DWORD *)lpBits, i=0; i < (UINT)(bm.bmWidth * bm.bmHeight); i++)
    {
        DWORD Color = Ptr32[i] & 0x00FFFFFF;
        DWORD Alpha = Color & 0xFF;

        Color |= Alpha << 24;

        Ptr32[i] = Color;
    }

    return hTextBmp;
}