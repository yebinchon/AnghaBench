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

/* Variables and functions */
 int /*<<< orphan*/  GRAPHICS ; 
 int /*<<< orphan*/  GRREGENABLESETRESET ; 
 int /*<<< orphan*/  GRREGMISC ; 
 int /*<<< orphan*/  GRREGREADMAPSEL ; 
 int /*<<< orphan*/  GRREGWRMODE ; 
 int /*<<< orphan*/  SEQUENCER ; 
 int /*<<< orphan*/  SQREGMAPMASK ; 
 int /*<<< orphan*/  SQREGMEMORY ; 
 void* oldgraphicsmisc ; 
 void* oldgraphicsmode ; 
 void* oldgraphicsreadmapsel ; 
 void* oldgraphicssetresetenable ; 
 void* oldsqregmapmask ; 
 void* oldsqregmemory ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	oldgraphicssetresetenable = FUNC0(GRAPHICS, GRREGENABLESETRESET);
	oldgraphicsmode = FUNC0(GRAPHICS, GRREGWRMODE);
	oldgraphicsmisc = FUNC0(GRAPHICS, GRREGMISC);
	oldgraphicsreadmapsel = FUNC0(GRAPHICS, GRREGREADMAPSEL);
	oldsqregmapmask = FUNC0(SEQUENCER, SQREGMAPMASK);
	oldsqregmemory = FUNC0(SEQUENCER, SQREGMEMORY);


	/* Make sure set/reset enable is off */
	FUNC1(GRAPHICS,GRREGENABLESETRESET,0);
	/* Select read plane 2 */
	FUNC1(GRAPHICS,GRREGREADMAPSEL,0x02);
	/* Make sure write and read mode = 0 */
	FUNC1(GRAPHICS,GRREGWRMODE,0x00);
	/* Set mapping to 64K at a000:0 & turn off odd/even at the graphics reg */
	FUNC1(GRAPHICS,GRREGMISC, 0x04);
	/* Set sequencer plane to 2 */
	FUNC1(SEQUENCER,SQREGMAPMASK, 0x04);
	/* Turn off odd/even at the sequencer */
	FUNC1(SEQUENCER,SQREGMEMORY, 0x07);
}