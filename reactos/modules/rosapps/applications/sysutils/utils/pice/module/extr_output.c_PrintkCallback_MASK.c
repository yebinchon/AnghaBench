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
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
struct TYPE_2__ {int /*<<< orphan*/  Buffer; } ;
typedef  scalar_t__* PULONG ;
typedef  TYPE_1__* PANSI_STRING ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ CurrentEIP ; 
 int /*<<< orphan*/  CurrentESP ; 
 int /*<<< orphan*/  CurrentSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ PICE_KdpPrintString ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bInPrintk ; 

void FUNC3(void)
{
	LPSTR fmt,args;
	ULONG ulAddress;
	ULONG countArgs,i,len;
	PANSI_STRING temp;
  CHAR buf[128];

	FUNC0((0,"In PrintkCallback\n"));

	bInPrintk = TRUE;

	// get the linear address of stack where string resides
	ulAddress = FUNC1(CurrentSS,CurrentESP);
	if(ulAddress)
	{
		FUNC0((0,"In PrintkCallback: ulAddress: %x\n", ulAddress));
		if(FUNC2(ulAddress+sizeof(char *)) )
		{
			//KdpPrintString has PANSI_STRING as a parameter
			temp = (PANSI_STRING)*(PULONG)(ulAddress+sizeof(char *));
    	FUNC0((0,"PrintkCallback: %s\n", temp->Buffer));
      /* Call our version of KdpPrintString() */
			CurrentEIP = (ULONG_PTR)PICE_KdpPrintString;
		}
	}
	bInPrintk = FALSE;
}