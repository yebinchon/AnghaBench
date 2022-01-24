#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t ULONG ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  VGA_DAC_DATA ; 
 int /*<<< orphan*/  VGA_DAC_WRITE_INDEX ; 
 size_t VGA_MAX_COLORS ; 

__attribute__((used)) static VOID FUNC5(const COLORREF* Palette, ULONG Size)
{
    ULONG i;

    // /* Disable screen and enable palette access */
    // IOReadB(VGA_INSTAT1_READ); // Put the AC register into index state
    // IOWriteB(VGA_AC_INDEX, 0x00);

    for (i = 0; i < Size; i++)
    {
        FUNC3(VGA_DAC_WRITE_INDEX, i);
        FUNC3(VGA_DAC_DATA, FUNC4(FUNC2(Palette[i])));
        FUNC3(VGA_DAC_DATA, FUNC4(FUNC1(Palette[i])));
        FUNC3(VGA_DAC_DATA, FUNC4(FUNC0(Palette[i])));
    }

    /* The following step might be optional */
    for (i = Size; i < VGA_MAX_COLORS; i++)
    {
        FUNC3(VGA_DAC_WRITE_INDEX, i);
        FUNC3(VGA_DAC_DATA, FUNC4(0x00));
        FUNC3(VGA_DAC_DATA, FUNC4(0x00));
        FUNC3(VGA_DAC_DATA, FUNC4(0x00));
    }

    /* Enable screen and disable palette access */
    // IOReadB(VGA_INSTAT1_READ); // Put the AC register into index state
    // IOWriteB(VGA_AC_INDEX, 0x20);
}