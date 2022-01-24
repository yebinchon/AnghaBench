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
 int /*<<< orphan*/  oldgraphicsmisc ; 
 int /*<<< orphan*/  oldgraphicsmode ; 
 int /*<<< orphan*/  oldgraphicsreadmapsel ; 
 int /*<<< orphan*/  oldgraphicssetresetenable ; 
 int /*<<< orphan*/  oldsqregmapmask ; 
 int /*<<< orphan*/  oldsqregmemory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0(GRAPHICS,GRREGENABLESETRESET,oldgraphicssetresetenable);
	FUNC0(GRAPHICS,GRREGWRMODE,oldgraphicsmode);
	FUNC0(GRAPHICS,GRREGREADMAPSEL,oldgraphicsreadmapsel);
	FUNC0(GRAPHICS,GRREGMISC, oldgraphicsmisc);
	FUNC0(SEQUENCER,SQREGMAPMASK, oldsqregmapmask);
	FUNC0(SEQUENCER,SQREGMEMORY, oldsqregmemory);
}