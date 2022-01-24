#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int biSize; int biBitCount; int biClrUsed; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biSizeImage; } ;
struct TYPE_7__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PUINT ;
typedef  TYPE_2__* PBITMAPINFO ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  int /*<<< orphan*/ * HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

BOOL
FUNC7(
    HBRUSH hbr,
    PBITMAPINFO pbmi,
    PVOID *ppvBits,
    PUINT puUsage)
{
    HBITMAP hbmp;
    HDC hdc;

    /* Call win32k to get the bitmap handle and color usage */
    hbmp = FUNC5(hbr, puUsage);
    if (hbmp == NULL)
        return FALSE;

    hdc = FUNC0(NULL);
    if (hdc == NULL)
        return FALSE;

    /* Initialize the BITMAPINFO */
    FUNC6(pbmi, sizeof(*pbmi));
    pbmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);

    /* Retrieve information about the bitmap */
    if (!FUNC1(hdc, hbmp, 0, 0, NULL, pbmi, *puUsage))
        return FALSE;

    /* Now allocate a buffer for the bits */
    *ppvBits = FUNC3(FUNC2(), 0, pbmi->bmiHeader.biSizeImage);
    if (*ppvBits == NULL)
        return FALSE;

    /* Retrieve the bitmap bits */
    if (!FUNC1(hdc, hbmp, 0, pbmi->bmiHeader.biHeight, *ppvBits, pbmi, *puUsage))
    {
        FUNC4(FUNC2(), 0, *ppvBits);
        *ppvBits = NULL;
        return FALSE;
    }

    /* GetDIBits doesn't set biClrUsed, but wine code needs it, so we set it */
    if (pbmi->bmiHeader.biBitCount <= 8)
    {
        pbmi->bmiHeader.biClrUsed =  1 << pbmi->bmiHeader.biBitCount;
    }

    return TRUE;
}