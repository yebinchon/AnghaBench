#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  size_t UINT ;
struct TYPE_10__ {size_t bmHeight; } ;
struct TYPE_9__ {int lfHeight; int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfQuality; int /*<<< orphan*/  lfCharSet; int /*<<< orphan*/  lfWeight; } ;
struct TYPE_8__ {size_t cy; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  Strings ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ LOGFONT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HINSTANCE ;
typedef  scalar_t__ HGDIOBJ ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_3__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_CHARSET ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FW_THIN ; 
 int /*<<< orphan*/  GWLP_HINSTANCE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDB_COSMOS ; 
 int /*<<< orphan*/  IDC_COMBO_ROTATION ; 
 int /*<<< orphan*/  IDC_IMAGE_COSMOS ; 
 int /*<<< orphan*/  IDC_SLIDER_NUM_OF_STARS ; 
 int /*<<< orphan*/  IDC_SLIDER_SPEED ; 
 int /*<<< orphan*/  IDS_DESCRIPTION ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int LR_CREATEDIBSECTION ; 
 int LR_DEFAULTSIZE ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int MAX_STARS ; 
 int MIN_STARS ; 
 int /*<<< orphan*/  PROOF_QUALITY ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 
 size_t ROTATION_ITEMS ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * RotoStrings ; 
 int /*<<< orphan*/  STM_SETIMAGE ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(HWND hWnd)
{
    TCHAR     Strings[256];
    HINSTANCE hInstance;
    UINT      x, gap;
    LOGFONT   lf;
    HFONT     hFont;
    HBITMAP   hCosmos;
    HDC       hDC, hMemDC;
    HGDIOBJ   hOldBmp, hOldFnt;
    SIZE      sizeReactOS;
    SIZE      sizeStarfield;
    BITMAP    bm;

    hInstance = (HINSTANCE)FUNC7(hWnd, GWLP_HINSTANCE);

    FUNC15(hWnd, IDC_SLIDER_NUM_OF_STARS, TBM_SETRANGE, FALSE, FUNC11(MIN_STARS, MAX_STARS));

    FUNC15(hWnd, IDC_SLIDER_SPEED, TBM_SETRANGE, FALSE, FUNC11(1, 100));

    for (x = 0; x < ROTATION_ITEMS; x++)
    {
        FUNC9(hInstance, RotoStrings[x], Strings, sizeof(Strings)/sizeof(TCHAR));
        FUNC15(hWnd, IDC_COMBO_ROTATION, CB_ADDSTRING, 0, (LPARAM)Strings);
    }

    hCosmos = FUNC8(hInstance, FUNC10(IDB_COSMOS), IMAGE_BITMAP, 0, 0, LR_CREATEDIBSECTION | LR_DEFAULTSIZE);

    hDC = FUNC4(hWnd);
    hMemDC = FUNC0(hDC);

    // Create the font for the title
    FUNC19(&lf, sizeof(lf));

    lf.lfWeight  = FW_THIN;
    lf.lfCharSet = ANSI_CHARSET;
    lf.lfQuality = PROOF_QUALITY;
    lf.lfHeight  = 36;
    FUNC21(lf.lfFaceName, FUNC20("Tahoma"));

    hFont = FUNC1(&lf);

    hOldBmp = FUNC14(hMemDC, hCosmos);
    hOldFnt = FUNC14(hMemDC, hFont);

    FUNC16(hMemDC, TRANSPARENT);
    FUNC17(hMemDC, FUNC12(0xFF, 0xFF, 0xFF));

    x = FUNC9(hInstance, IDS_DESCRIPTION, Strings, sizeof(Strings)/sizeof(TCHAR));

    FUNC6(hMemDC, FUNC20("ReactOS"), 7, &sizeReactOS);
    FUNC6(hMemDC, Strings,       x, &sizeStarfield);

    FUNC5(hCosmos, sizeof(BITMAP), &bm);

    gap = bm.bmHeight - sizeReactOS.cy - sizeStarfield.cy;

    FUNC18(hMemDC, 16, gap * 2 / 5, FUNC20("ReactOS"), 7);
    FUNC18(hMemDC, 16, gap * 3 / 5 + sizeReactOS.cy, Strings, x);

    FUNC14(hMemDC, hOldBmp);
    FUNC14(hMemDC, hOldFnt);

    FUNC3(hFont);

    FUNC2(hMemDC);
    FUNC13(hWnd, hDC);

    FUNC15(hWnd, IDC_IMAGE_COSMOS, STM_SETIMAGE, IMAGE_BITMAP, (LPARAM)hCosmos);
}