#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int VideoPage; int VideoPageOffset; int VideoPageSize; } ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int BIOS_MAX_PAGES ; 
 TYPE_1__* Bda ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VGA_CRTC_DATA ; 
 int /*<<< orphan*/  VGA_CRTC_INDEX ; 
 int /*<<< orphan*/  VGA_CRTC_START_ADDR_HIGH_REG ; 
 int /*<<< orphan*/  VGA_CRTC_START_ADDR_LOW_REG ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static BOOLEAN FUNC5(BYTE PageNumber)
{
    BYTE Row, Column;

    /* Check if the page exists */
    if (PageNumber >= BIOS_MAX_PAGES) return FALSE;

    /* Check if this is the same page */
    if (PageNumber == Bda->VideoPage) return TRUE;

    /* Update the values in the BDA */
    Bda->VideoPage       = PageNumber;
    Bda->VideoPageOffset = Bda->VideoPage * Bda->VideoPageSize;

    /* Set the start address in the CRTC */
    FUNC1(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_LOW_REG);
    FUNC1(VGA_CRTC_DATA , FUNC2(Bda->VideoPageOffset));
    FUNC1(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_HIGH_REG);
    FUNC1(VGA_CRTC_DATA , FUNC0(Bda->VideoPageOffset));

    /*
     * Get the cursor position (we don't update anything on the BIOS side
     * but we update the cursor position on the VGA side).
     */
    FUNC3(&Row, &Column, PageNumber);
    FUNC4( Row,  Column, PageNumber);

    return TRUE;
}