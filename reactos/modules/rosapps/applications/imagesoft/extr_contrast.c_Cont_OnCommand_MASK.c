#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_7__ {TYPE_2__* Info; int /*<<< orphan*/  BlueVal; int /*<<< orphan*/  GreenVal; int /*<<< orphan*/  RedVal; } ;
struct TYPE_6__ {TYPE_1__* ImageEditors; } ;
struct TYPE_5__ {int /*<<< orphan*/  hSelf; int /*<<< orphan*/  hBitmap; } ;
typedef  TYPE_3__* PIMAGEADJUST ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  IDCANCEL 129 
#define  IDOK 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL
FUNC4(PIMAGEADJUST pImgAdj,
          HWND hDlg,
          UINT uID)
{
    switch (uID)
    {
        case IDOK:
        {
            HDC hdcMem;

            hdcMem = FUNC2(pImgAdj->Info->ImageEditors->hSelf);

            FUNC0(pImgAdj->Info->ImageEditors->hBitmap,
                             pImgAdj->Info->ImageEditors->hBitmap,
                             pImgAdj->Info->ImageEditors->hSelf,
                             hdcMem,
                             pImgAdj->RedVal,
                             pImgAdj->GreenVal,
                             pImgAdj->BlueVal);

            FUNC3(pImgAdj->Info->ImageEditors->hSelf,
                      hdcMem);

            FUNC1(hDlg,
                      uID);

            return TRUE;
        }

        case IDCANCEL:
        {
            FUNC1(hDlg,
                      uID);
            return TRUE;
        }
    }

    return FALSE;
}