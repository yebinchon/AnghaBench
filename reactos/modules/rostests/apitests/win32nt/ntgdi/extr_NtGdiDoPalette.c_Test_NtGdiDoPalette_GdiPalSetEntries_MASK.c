#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  palEntries2 ;
typedef  int /*<<< orphan*/  palEntries ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int /*<<< orphan*/  peFlags; int /*<<< orphan*/  peBlue; int /*<<< orphan*/  peGreen; int /*<<< orphan*/  peRed; } ;
typedef  TYPE_1__ PALETTEENTRY ;
typedef  scalar_t__ HPALETTE ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  DEFAULT_PALETTE ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GdiPalGetEntries ; 
 int /*<<< orphan*/  GdiPalSetEntries ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void
FUNC11(void)
{
    HDC hDC;
    HPALETTE hPal, hOldPal;
    PALETTEENTRY palEntries[5] = {
        {0,0,0,0},
        {0xff,0xff,0xff,0},
        {0x33,0x66,0x99,0},
        {0x25,0x84,0x14,0},
        {0x12,0x34,0x56,0x11}};
    PALETTEENTRY palEntries2[5];

    hPal = FUNC1();

    /* Test invalid handle */
    FUNC6(ERROR_SUCCESS);
    FUNC10(FUNC4((HPALETTE)23, 0, 1, palEntries, GdiPalSetEntries, TRUE), 0);
    FUNC10(FUNC2(), ERROR_SUCCESS);

    /* Test system palette */
    FUNC10(FUNC4(FUNC3(DEFAULT_PALETTE), 0, 1, palEntries, GdiPalSetEntries, TRUE), 0);
    FUNC10(FUNC2(), ERROR_SUCCESS);

    FUNC10(FUNC4(hPal, 0, 1, palEntries, GdiPalSetEntries, TRUE), 1);
    FUNC10(FUNC4(hPal, 0, 2, palEntries, GdiPalSetEntries, TRUE), 2);
    FUNC10(FUNC4(hPal, 0, 3, palEntries, GdiPalSetEntries, TRUE), 3);
    FUNC10(FUNC4(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE), 5);
    FUNC10(FUNC4(hPal, 0, 6, palEntries, GdiPalSetEntries, TRUE), 5);
    FUNC10(FUNC4(hPal, 3, 6, palEntries, GdiPalSetEntries, TRUE), 2);
//  TEST(NtGdiDoPalette(hPal, 4, 23247, palEntries, GdiPalSetEntries, TRUE), 0);

    /* Test bInbound, FALSE */
    FUNC4(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE);
    FUNC7(palEntries2, sizeof(palEntries2));
    FUNC10(FUNC4(hPal, 0, 5, palEntries2, GdiPalSetEntries, FALSE), 5);
    /* we should get the old values returned in our buffer! */
    FUNC9(FUNC8(palEntries2, palEntries, sizeof(palEntries)), 0);

    /* check what we have in our palette now */
    FUNC7(palEntries2, sizeof(palEntries2));
    FUNC10(FUNC4(hPal, 0, 5, palEntries2, GdiPalGetEntries, FALSE), 5);
    FUNC9(FUNC8(palEntries2, palEntries, sizeof(palEntries)), 0);

    FUNC10(FUNC4(hPal, 0, 4, palEntries2, GdiPalSetEntries, TRUE), 4);
    FUNC10(FUNC2(), ERROR_SUCCESS);

    /* Test if entries are set correctly */
    hPal = FUNC1();
    FUNC4(hPal, 0, 5, palEntries, GdiPalSetEntries, TRUE);
    FUNC4(hPal, 0, 5, palEntries2, GdiPalGetEntries, FALSE);
    FUNC9(palEntries2[0].peRed, 0);
    FUNC9(palEntries2[0].peGreen, 0);
    FUNC9(palEntries2[0].peBlue, 0);
    FUNC9(palEntries2[0].peFlags, 0);

    /* Test that the buffer was not changed */


    /* Test with palette selected into dc */
    hDC = FUNC0(NULL);
    hOldPal = FUNC5(hDC, hPal, 0);
    FUNC10(FUNC4(hPal, 0, 4, palEntries, GdiPalSetEntries, TRUE), 4);
    FUNC5(hDC, hOldPal, 0);

    /* Test pEntries = NULL */
    FUNC10(FUNC4(hPal, 0, 1, NULL, GdiPalGetEntries, TRUE), 0);

}