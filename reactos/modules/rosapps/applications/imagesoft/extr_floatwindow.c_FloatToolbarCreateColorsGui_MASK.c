#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* fltColors; } ;
struct TYPE_7__ {double right; int bottom; } ;
struct TYPE_6__ {int /*<<< orphan*/  hSelf; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__* PMAIN_WND_INFO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETIMAGE ; 
 int BS_BITMAP ; 
 int CBS_DROPDOWN ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDB_COLORSMORE ; 
 int /*<<< orphan*/  IMAGE_BITMAP ; 
 int LR_LOADMAP3DCOLORS ; 
 int LR_LOADTRANSPARENT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  WC_BUTTON ; 
 int /*<<< orphan*/  WC_COMBOBOX ; 
 int /*<<< orphan*/  WC_STATIC ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  WS_EX_STATICEDGE ; 
 int WS_VISIBLE ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  hInstance ; 

BOOL
FUNC12(PMAIN_WND_INFO Info)
{
    HWND hColorPicker;
    HWND hHueSlider;
    HWND hMouseButton;
    HWND hMore;
    RECT rect;
    HBITMAP hMoreBitmap;

    FUNC3(Info->fltColors->hSelf,
                  &rect);

    hColorPicker = FUNC0(0,
                                  WC_STATIC,
                                  NULL,
                                  WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                  2,
                                  2,
                                  (int) (rect.right * 0.65),
                                  rect.bottom - 2,
                                  Info->fltColors->hSelf,
                                  NULL,
                                  hInstance,
                                  NULL);
    if (hColorPicker == NULL)
        return FALSE;

    hHueSlider = FUNC0(0,
                                WC_STATIC,
                                NULL,
                                WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                145,
                                35,
                                25,
                                135,
                                Info->fltColors->hSelf,
                                NULL,
                                hInstance,
                                NULL);
    if (hHueSlider == NULL)
        return FALSE;

    hMouseButton = FUNC0(0,
                                  WC_COMBOBOX,
                                  NULL,
                                  WS_CHILD | WS_VISIBLE | CBS_DROPDOWN,
                                  118, 5, 75, 25,
                                  Info->fltColors->hSelf,
                                  NULL,
                                  hInstance,
                                  NULL);
    if (hMouseButton == NULL)
        return FALSE;

    FUNC7(hMouseButton);

    /* temp, just testing */
    FUNC9(hMouseButton, CB_ADDSTRING, 0, (LPARAM)FUNC11("Primary"));
    FUNC9(hMouseButton, CB_ADDSTRING, 0, (LPARAM)FUNC11("Secondary"));
    FUNC9(hMouseButton, CB_SETCURSEL, 0, 0);


    hMore = FUNC0(WS_EX_STATICEDGE,
                           WC_BUTTON,
                           NULL,
                           WS_CHILD | WS_VISIBLE | BS_BITMAP,
                           rect.right - 15,
                           rect.bottom - 15,
                           15, 15,
                           Info->fltColors->hSelf,
                           NULL,
                           hInstance,
                           NULL);
    if (hMore == NULL)
        return FALSE;

    hMoreBitmap = (HBITMAP)FUNC5(hInstance,
                                     FUNC6(IDB_COLORSMORE),
                                     IMAGE_BITMAP,
                                     12,
                                     11,
                                     LR_LOADTRANSPARENT | LR_LOADMAP3DCOLORS);
    if (hMoreBitmap != NULL)
    {
        FUNC9(hMore,
                    BM_SETIMAGE,
                    IMAGE_BITMAP,
                    (LPARAM)hMoreBitmap);
    }


    /* temp functions for playing about with possible layouts */
    FUNC2(hHueSlider);
    FUNC1(hColorPicker);

    if (hColorPicker != NULL)
    {
        HDC hDc = FUNC4(hColorPicker);
        FUNC10(hDc, 8, 75, FUNC11("Possible layout?"), 16);
        FUNC8(hColorPicker, hDc);
    }

    return TRUE;

}