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
typedef  int /*<<< orphan*/  WORD ;
typedef  int UINT_PTR ;
struct TYPE_5__ {int palVersion; int palNumEntries; TYPE_1__* palPalEntry; } ;
struct TYPE_4__ {int /*<<< orphan*/  peFlags; scalar_t__ peBlue; scalar_t__ peGreen; scalar_t__ peRed; } ;
typedef  TYPE_2__ LOGPALETTE ;
typedef  scalar_t__ HPALETTE ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ GDI_OBJECT_TYPE_PALETTE ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PC_EXPLICIT ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

void
FUNC9(void)
{
    LOGPALETTE logpal;
    HPALETTE hPalette;
    WORD wPalette;

    FUNC2(&wPalette, sizeof(WORD), 0x77);
    logpal.palVersion = 0x0300;
    logpal.palNumEntries = 1;
    logpal.palPalEntry[0].peRed = 0;
    logpal.palPalEntry[0].peGreen = 0;
    logpal.palPalEntry[0].peBlue = 0;
    logpal.palPalEntry[0].peFlags = PC_EXPLICIT;
    hPalette = FUNC0(&logpal);
    FUNC8(hPalette != 0, "CreatePalette failed, skipping tests.\n");
    if (!hPalette) return;

    FUNC8(FUNC5((HANDLE)((UINT_PTR)hPalette & 0x0000ffff), 0, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC6((HANDLE)((UINT_PTR)hPalette & 0x0000ffff), 0, NULL) == sizeof(WORD), "\n");

    FUNC7(ERROR_SUCCESS);
    FUNC8(FUNC5((HANDLE)GDI_OBJECT_TYPE_PALETTE, 0, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC6((HANDLE)GDI_OBJECT_TYPE_PALETTE, 0, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, sizeof(WORD), NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, 0, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, 5, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, -5, NULL) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, sizeof(WORD), &wPalette) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, sizeof(WORD)+2, &wPalette) == sizeof(WORD), "\n");
    FUNC8(FUNC4(hPalette, 0, &wPalette) == 0, "\n");
    FUNC8(FUNC4(hPalette, 1, &wPalette) == 0, "\n");
    FUNC8(FUNC4(hPalette, -1, &wPalette) == sizeof(WORD), "\n");
    FUNC8(FUNC3() == ERROR_SUCCESS, "\n");
    FUNC1(hPalette);
    FUNC8(FUNC6((HANDLE)GDI_OBJECT_TYPE_PALETTE, sizeof(WORD), &wPalette) == 0, "\n");
    FUNC8(FUNC3() == ERROR_SUCCESS, "\n");

}