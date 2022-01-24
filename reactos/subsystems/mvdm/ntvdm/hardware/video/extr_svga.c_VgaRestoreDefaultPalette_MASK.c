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
typedef  size_t USHORT ;
struct TYPE_3__ {scalar_t__ peFlags; void* peBlue; void* peGreen; void* peRed; } ;
typedef  TYPE_1__* PPALETTEENTRY ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/ * VgaDacRegisters ; 
 int /*<<< orphan*/ * VgaDefaultPalette ; 

__attribute__((used)) static VOID FUNC4(PPALETTEENTRY Entries, USHORT NumOfEntries)
{
    USHORT i;

    /* Copy the colors of the default palette to the DAC and console palette */
    for (i = 0; i < NumOfEntries; i++)
    {
        /* Set the palette entries */
        Entries[i].peRed   = FUNC2(VgaDefaultPalette[i]);
        Entries[i].peGreen = FUNC1(VgaDefaultPalette[i]);
        Entries[i].peBlue  = FUNC0(VgaDefaultPalette[i]);
        Entries[i].peFlags = 0;

        /* Set the DAC registers */
        VgaDacRegisters[i * 3]     = FUNC3(FUNC2(VgaDefaultPalette[i]));
        VgaDacRegisters[i * 3 + 1] = FUNC3(FUNC1(VgaDefaultPalette[i]));
        VgaDacRegisters[i * 3 + 2] = FUNC3(FUNC0(VgaDefaultPalette[i]));
    }
}