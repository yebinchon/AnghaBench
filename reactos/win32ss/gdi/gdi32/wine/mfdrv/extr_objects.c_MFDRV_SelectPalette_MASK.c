#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_5__ {int palNumEntries; int /*<<< orphan*/  palPalEntry; int /*<<< orphan*/  palVersion; } ;
typedef  TYPE_1__* PLOGPALETTE ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  PALETTEENTRY ;
typedef  int /*<<< orphan*/  LOGPALETTE ;
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  PALVERSION ; 

HPALETTE FUNC6( PHYSDEV dev, HPALETTE hPalette, BOOL bForceBackground )
{
#define PALVERSION 0x0300

    PLOGPALETTE logPalette;
    WORD        wNumEntries = 0;
    BOOL        creationSucceed;
    int         sizeofPalette;

    FUNC0(hPalette, sizeof(WORD), &wNumEntries);

    if (wNumEntries == 0) return 0;

    sizeofPalette = sizeof(LOGPALETTE) + ((wNumEntries-1) * sizeof(PALETTEENTRY));
    logPalette = FUNC3( FUNC2(), 0, sizeofPalette );

    if (logPalette == NULL) return 0;

    logPalette->palVersion = PALVERSION;
    logPalette->palNumEntries = wNumEntries;

    FUNC1(hPalette, 0, wNumEntries, logPalette->palPalEntry);

    creationSucceed = FUNC5( dev, hPalette, logPalette, sizeofPalette );

    FUNC4( FUNC2(), 0, logPalette );

    if (creationSucceed)
        return hPalette;

    return 0;
}