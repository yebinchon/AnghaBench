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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ debugger_file ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

HANDLE	FUNC3(void)
{
    debugger_file = FUNC0("\\Device\\Pice",GENERIC_READ,0,NULL,OPEN_EXISTING,NULL,NULL);
	if(debugger_file == INVALID_HANDLE_VALUE)
	{
		FUNC2("LOADER: debugger is not loaded. Last Error: %ld\n", FUNC1());
	}

	return debugger_file;
}