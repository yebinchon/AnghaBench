#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
struct TYPE_11__ {int RedVal; int BlueVal; int GreenVal; void* hPreviewBitmap; TYPE_6__ ImageRect; TYPE_2__* Info; void* hBitmap; int /*<<< orphan*/  hPicPrev; } ;
struct TYPE_10__ {TYPE_1__* ImageEditors; } ;
struct TYPE_9__ {int /*<<< orphan*/  hBitmap; } ;
typedef  TYPE_2__* PMAIN_WND_INFO ;
typedef  TYPE_3__* PIMAGEADJUST ;
typedef  scalar_t__ LPARAM ;
typedef  TYPE_3__ IMAGEADJUST ;
typedef  int /*<<< orphan*/  HWND ;
typedef  void* HBITMAP ;

/* Variables and functions */
 scalar_t__ BASECOLOUR ; 
 int /*<<< orphan*/  BM_SETCHECK ; 
 int /*<<< orphan*/  BST_CHECKED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  IDC_BRI_EDIT ; 
 int /*<<< orphan*/  IDC_BRI_FULL ; 
 int /*<<< orphan*/  IDC_BRI_TRACKBAR ; 
 int /*<<< orphan*/  IDC_PICPREVIEW ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int /*<<< orphan*/  LR_CREATEDIBSECTION ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TBM_SETRANGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static PIMAGEADJUST
FUNC9(PIMAGEADJUST pImgAdj,
             HWND hDlg,
             LPARAM lParam)
{
    pImgAdj = (IMAGEADJUST*) FUNC3(ProcessHeap,
                        0,
                        sizeof(IMAGEADJUST));
    if (!pImgAdj)
        return NULL;


    pImgAdj->Info = (PMAIN_WND_INFO)lParam;
    if (!pImgAdj->Info->ImageEditors)
        goto fail;


    pImgAdj->hPicPrev = FUNC2(hDlg, IDC_PICPREVIEW);
    FUNC1(pImgAdj->hPicPrev,
                  &pImgAdj->ImageRect);

    /* Make a static copy of the main image */
    pImgAdj->hBitmap = (HBITMAP) FUNC0(pImgAdj->Info->ImageEditors->hBitmap,
                                 IMAGE_BITMAP,
                                 pImgAdj->ImageRect.right,
                                 pImgAdj->ImageRect.bottom,
                                 LR_CREATEDIBSECTION);
    if (!pImgAdj->hBitmap)
        goto fail;

    /* Make a copy which will be updated */
    pImgAdj->hPreviewBitmap = (HBITMAP) FUNC0(pImgAdj->Info->ImageEditors->hBitmap,
                                        IMAGE_BITMAP,
                                        pImgAdj->ImageRect.right,
                                        pImgAdj->ImageRect.bottom,
                                        LR_CREATEDIBSECTION);
    if (!pImgAdj->hPreviewBitmap)
        goto fail;


    pImgAdj->RedVal = pImgAdj->BlueVal = pImgAdj->GreenVal = 100;

    /* setup dialog */
    FUNC6(hDlg,
                       IDC_BRI_FULL,
                       BM_SETCHECK,
                       BST_CHECKED,
                       0);
    FUNC6(hDlg,
                       IDC_BRI_TRACKBAR,
                       TBM_SETRANGE,
                       TRUE,
                       (LPARAM)FUNC5(0, 200));
    FUNC6(hDlg,
                       IDC_BRI_TRACKBAR,
                       TBM_SETPOS,
                       TRUE,
                       (LPARAM)BASECOLOUR);
    FUNC7(hDlg,
                   IDC_BRI_EDIT,
                   FUNC8("100"));

    return pImgAdj;

fail:
    FUNC4(ProcessHeap,
             0,
             pImgAdj);
    return NULL;
}