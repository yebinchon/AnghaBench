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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentCS ; 
 int /*<<< orphan*/  CurrentEIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC5(void)
{
PUCHAR linear;
BOOLEAN result=FALSE;

    FUNC1();
	FUNC0((0,"IsCallInstrAtEIP()\n"));

	linear=(PUCHAR)FUNC2(CurrentCS,CurrentEIP);
	if(FUNC3((ULONG)linear,2))
	{
		if(*linear== 0xE8 || // call
		   (*linear== 0xFF && ( ((*(linear+1)>>3)&0x7)==0x2 || ((*(linear+1)>>3)&0x7)==0x3) ) || // call
		   *linear== 0x9A || // call
		   *linear== 0xF2 || // REP
		   *linear== 0xF3)   // REP
			result=TRUE;
	}

    FUNC4();

	return result;
}