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
typedef  int /*<<< orphan*/  DEBUGGER_STATUS_BLOCK ;

/* Variables and functions */
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  PICE_IOCTL_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  debugger_file ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(void)
{
    DEBUGGER_STATUS_BLOCK sb;
    int iRetVal;

	if(FUNC2() != INVALID_HANDLE_VALUE)
	{
		iRetVal = FUNC1(debugger_file,PICE_IOCTL_STATUS,&sb);

        //printf("LOADER: Test = %X\n",sb.Test);
		FUNC0();
	}
}