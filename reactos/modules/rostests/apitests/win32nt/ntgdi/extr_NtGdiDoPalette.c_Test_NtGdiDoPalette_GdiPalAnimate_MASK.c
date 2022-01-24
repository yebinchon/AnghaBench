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
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int peRed; int peGreen; int peBlue; int peFlags; } ;
typedef  TYPE_1__ PALETTEENTRY ;
typedef  int /*<<< orphan*/  HPALETTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEFAULT_PALETTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GdiPalAnimate ; 
 int /*<<< orphan*/  GdiPalGetEntries ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PC_EXPLICIT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(void)
{
    HPALETTE hPal;
    PALETTEENTRY palEntries[5] = {
        {0,0,0,0},
        {0xff,0xff,0xff,0},
        {0x33,0x66,0x99,0},
        {0x25,0x84,0x14,0},
        {0x12,0x34,0x56,0x11}};
    PALETTEENTRY palEntries2[5];

    /* Test stock palette */
    FUNC5(ERROR_SUCCESS);
    FUNC7(FUNC4(FUNC3(DEFAULT_PALETTE), 0, 1, palEntries, GdiPalAnimate, FALSE), 0);
    FUNC7(FUNC2(), ERROR_SUCCESS);


    /* Test pEntries = NULL */
    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 0, 1, NULL, GdiPalAnimate, TRUE), 0);
    FUNC7(FUNC4(hPal, 0, 1, NULL, GdiPalAnimate, FALSE), 0);
    FUNC1(hPal);

    /* Test PC_RESERVED */
    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 0, 5, palEntries, GdiPalAnimate, TRUE), 2);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 1, 5, palEntries, GdiPalAnimate, TRUE), 2);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 2, 5, palEntries, GdiPalAnimate, TRUE), 1);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 3, 5, palEntries, GdiPalAnimate, TRUE), 1);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 4, 5, palEntries, GdiPalAnimate, TRUE), 0);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 5, 5, palEntries, GdiPalAnimate, TRUE), 0);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 0, 5, palEntries, GdiPalAnimate, FALSE), 2);
    FUNC1(hPal);

    hPal = FUNC0();
    FUNC7(FUNC4(hPal, 3, 5, palEntries, GdiPalAnimate, FALSE), 1);
    FUNC1(hPal);

    /* Test if entries are set correctly */
    hPal = FUNC0();
    FUNC4(hPal, 0, 5, palEntries, GdiPalAnimate, TRUE);
    FUNC4(hPal, 0, 5, palEntries2, GdiPalGetEntries, FALSE);
    FUNC6(palEntries2[0].peRed, 1);
    FUNC6(palEntries2[0].peGreen, 2);
    FUNC6(palEntries2[0].peBlue, 3);
    FUNC6(palEntries2[0].peFlags, 0);
    FUNC6(palEntries2[1].peRed, palEntries[1].peRed);
    FUNC6(palEntries2[1].peGreen, palEntries[1].peGreen);
    FUNC6(palEntries2[1].peBlue, palEntries[1].peBlue);
    FUNC6(palEntries2[1].peFlags, palEntries[1].peFlags);
    FUNC6(palEntries2[2].peRed, 11);
    FUNC6(palEntries2[2].peGreen, 55);
    FUNC6(palEntries2[2].peBlue, 77);
    FUNC6(palEntries2[2].peFlags, PC_EXPLICIT);
    FUNC6(palEntries2[3].peRed, palEntries[3].peRed);
    FUNC6(palEntries2[3].peGreen, palEntries[3].peGreen);
    FUNC6(palEntries2[3].peBlue, palEntries[3].peBlue);
    FUNC6(palEntries2[3].peFlags, palEntries[3].peFlags);
    FUNC1(hPal);

}