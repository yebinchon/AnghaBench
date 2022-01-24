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
typedef  int UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCREEN_BUFFER_SIZE ; 
 int /*<<< orphan*/  cGraphTable2 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  pScreenBufferHardwareVga ; 
 int /*<<< orphan*/  pScreenBufferSaveVga ; 
 int /*<<< orphan*/  pScreenBufferTempVga ; 
 int /*<<< orphan*/  pScreenBufferVga ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	UCHAR data;

	// unprotect crtc regs 0-7
	FUNC3(0x11,0x3d4);
	data = FUNC1(0x3d5);
	FUNC3(data & 0x7F,0x3d5);

	// restore original regs
	FUNC4();

	// load a font
	FUNC2(cGraphTable2,0);

    pScreenBufferVga = pScreenBufferSaveVga;
    // copy screen to the console
    FUNC0(pScreenBufferVga,pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);
    // copy the temp area to the screen
    FUNC0(pScreenBufferHardwareVga,pScreenBufferTempVga,SCREEN_BUFFER_SIZE);
}