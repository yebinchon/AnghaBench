#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int biSize; int biBitCount; int biPlanes; int /*<<< orphan*/  biWidth; int /*<<< orphan*/  biHeight; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  TYPE_2__* PBITMAPINFO ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BmpInfo ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BOOL FUNC11(HDC hDC, HFONT hFont, INT XOffset, INT YOffset, CHAR Character, DWORD BmpBits[])
{
    BOOL bReturnValue = FALSE;
    HBITMAP hOldBmp;
    HFONT hOldFont;
    HBITMAP hBmp = NULL;
    BYTE BmpInfo[sizeof(BITMAPINFO) + sizeof(RGBQUAD)];
    PBITMAPINFO pBmpInfo = (PBITMAPINFO)&BmpInfo;

    hBmp = FUNC0(hDC, WIDTH, HEIGHT);
    if (!hBmp)
    {
        FUNC10(stderr, "CreateCompatibleBitmap failed with error %d!\n", FUNC3());
        goto Cleanup;
    }

    hOldBmp  = FUNC5(hDC, hBmp);
    hOldFont = FUNC5(hDC, hFont);
    FUNC6(hDC, FUNC4(0, 0, 0));
    FUNC7(hDC, FUNC4(255, 255, 255));
    FUNC8(hDC, XOffset, YOffset, &Character, 1);

    /*
     * Use enough memory for BITMAPINFO and one additional color in the color table.
     * BITMAPINFO already contains a color table entry for a single color and
     * GetDIBits needs space for two colors (black and white).
     */
    FUNC9(&BmpInfo, sizeof(BmpInfo));
    pBmpInfo->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    pBmpInfo->bmiHeader.biHeight = -HEIGHT;
    pBmpInfo->bmiHeader.biWidth = WIDTH;
    pBmpInfo->bmiHeader.biBitCount = 1;
    pBmpInfo->bmiHeader.biPlanes = 1;

    bReturnValue = TRUE;

    if (!FUNC2(hDC, hBmp, 0, HEIGHT, BmpBits, pBmpInfo, 0))
    {
        FUNC10(stderr, "GetDIBits failed with error %d!\n", FUNC3());
        bReturnValue = FALSE;
    }

    FUNC5(hDC, hOldBmp);
    FUNC5(hDC, hOldFont);

Cleanup:
    if (hBmp)
        FUNC1(hBmp);

    return bReturnValue;
}