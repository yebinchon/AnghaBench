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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct msicap {scalar_t__ msgctrl; scalar_t__ nextptr; int /*<<< orphan*/  capid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIM_MSICTRL_64BIT ; 
 int /*<<< orphan*/  PCIY_MSI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct msicap*,int) ; 
 int FUNC3 (int) ; 

void
FUNC4(struct msicap *msicap, int msgnum, int nextptr)
{
	int mmc;

	FUNC0(sizeof(struct msicap) == 14);

	/* Number of msi messages must be a power of 2 between 1 and 32 */
	FUNC1((msgnum & (msgnum - 1)) == 0 && msgnum >= 1 && msgnum <= 32);
	mmc = FUNC3(msgnum) - 1;

	FUNC2(msicap, sizeof(struct msicap));
	msicap->capid = PCIY_MSI;
	msicap->nextptr = (uint8_t) nextptr;
	msicap->msgctrl = (uint16_t) (PCIM_MSICTRL_64BIT | (mmc << 1));
}