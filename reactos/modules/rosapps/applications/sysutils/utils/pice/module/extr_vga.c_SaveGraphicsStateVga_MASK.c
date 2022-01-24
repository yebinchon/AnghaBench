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
 int /*<<< orphan*/  cGraphTable ; 
 int /*<<< orphan*/  cGraphTable2 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  pScreenBufferHardwareVga ; 
 int /*<<< orphan*/  pScreenBufferSaveVga ; 
 int /*<<< orphan*/  pScreenBufferTempVga ; 
 int /*<<< orphan*/  pScreenBufferVga ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	UCHAR data;

	// save current regs
	FUNC4();

	// unprotect crtc regs 0-7
	FUNC3(0x11,0x3d4);
	data = FUNC1(0x3d5);
	FUNC3(data & 0x7F,0x3d5);

	// save current font
	FUNC7(cGraphTable2);

	// restore original regs
#ifdef VGA_EXTENDED
	pice_set_mode_3_80x50();
#else
	FUNC5();
#endif

	// load a font
	FUNC2(cGraphTable,1);

	// copy the screen content to temp area
    FUNC0(pScreenBufferTempVga,pScreenBufferHardwareVga,SCREEN_BUFFER_SIZE);
    // copy the console to the screen
    FUNC0(pScreenBufferHardwareVga,pScreenBufferVga,SCREEN_BUFFER_SIZE);
    // save original pointer
    pScreenBufferSaveVga = pScreenBufferVga;
    // pScreenBufferVga now points to screen
    pScreenBufferVga = pScreenBufferHardwareVga;
}