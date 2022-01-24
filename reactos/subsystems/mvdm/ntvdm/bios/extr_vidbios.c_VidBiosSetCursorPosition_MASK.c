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
typedef  size_t WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {size_t VideoPage; size_t ScreenColumns; int /*<<< orphan*/ * CursorPosition; } ;
typedef  size_t BYTE ;

/* Variables and functions */
 TYPE_1__* Bda ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LOC_HIGH_REG ; 
 int /*<<< orphan*/  VGA_CRTC_CURSOR_LOC_LOW_REG ; 
 int /*<<< orphan*/  VGA_CRTC_DATA ; 
 int /*<<< orphan*/  VGA_CRTC_INDEX ; 

__attribute__((used)) static VOID FUNC4(BYTE Row, BYTE Column, BYTE Page)
{
    /* Update the position in the BDA */
    Bda->CursorPosition[Page] = FUNC3(Column, Row);

    /* Check if this is the current video page */
    if (Page == Bda->VideoPage)
    {
        WORD Offset = Row * Bda->ScreenColumns + Column;

        /* Modify the CRTC registers */
        FUNC1(VGA_CRTC_INDEX, VGA_CRTC_CURSOR_LOC_LOW_REG);
        FUNC1(VGA_CRTC_DATA , FUNC2(Offset));
        FUNC1(VGA_CRTC_INDEX, VGA_CRTC_CURSOR_LOC_HIGH_REG);
        FUNC1(VGA_CRTC_DATA , FUNC0(Offset));
    }
}