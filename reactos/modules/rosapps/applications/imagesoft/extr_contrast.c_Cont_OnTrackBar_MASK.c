#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  hPicPrev; void* BlueVal; void* GreenVal; void* RedVal; int /*<<< orphan*/  hPreviewBitmap; int /*<<< orphan*/  hBitmap; } ;
typedef  TYPE_1__* PIMAGEADJUST ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  void* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,void*) ; 
 void* BASECOLOUR ; 
 scalar_t__ BST_CHECKED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_BRI_BLUE ; 
 int /*<<< orphan*/  IDC_BRI_EDIT ; 
 int /*<<< orphan*/  IDC_BRI_FULL ; 
 int /*<<< orphan*/  IDC_BRI_GREEN ; 
 int /*<<< orphan*/  IDC_BRI_RED ; 
 int /*<<< orphan*/  IDC_BRI_TRACKBAR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_GETPOS ; 

__attribute__((used)) static VOID
FUNC6(PIMAGEADJUST pImgAdj,
           HWND hDlg)
{
    HDC hdcMem;
    DWORD TrackPos;

    TrackPos = (DWORD)FUNC4(hDlg,
                                         IDC_BRI_TRACKBAR,
                                         TBM_GETPOS,
                                         0,
                                         0);

    FUNC5(hDlg,
                  IDC_BRI_EDIT,
                  TrackPos,
                  FALSE);

    if (FUNC2(hDlg, IDC_BRI_FULL) == BST_CHECKED)
    {
        pImgAdj->RedVal = pImgAdj->GreenVal = pImgAdj->BlueVal = TrackPos - BASECOLOUR + 100;
    }
    else if (FUNC2(hDlg, IDC_BRI_RED) == BST_CHECKED)
    {
        pImgAdj->RedVal = TrackPos - BASECOLOUR + 100;
    }
    else if (FUNC2(hDlg, IDC_BRI_GREEN) == BST_CHECKED)
    {
        pImgAdj->GreenVal = TrackPos - BASECOLOUR + 100;
    }
    else if (FUNC2(hDlg, IDC_BRI_BLUE) == BST_CHECKED)
    {
        pImgAdj->BlueVal = TrackPos - BASECOLOUR + 100;
    }

    hdcMem = FUNC1(pImgAdj->hPicPrev);

    FUNC0(pImgAdj->hBitmap,
                     pImgAdj->hPreviewBitmap,
                     pImgAdj->hPicPrev,
                     hdcMem,
                     pImgAdj->RedVal,
                     pImgAdj->GreenVal,
                     pImgAdj->BlueVal);

    FUNC3(pImgAdj->hPicPrev, hdcMem);
}