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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SYMOPT_ALLOW_ABSOLUTE_SYMBOLS ; 
 int SYMOPT_DEFERRED_LOADS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC4(HANDLE hProcess)
{
	if (!FUNC1(hProcess, 0, FALSE))
		return FALSE;

    FUNC2(FUNC0() | SYMOPT_ALLOW_ABSOLUTE_SYMBOLS);
	FUNC2(FUNC0() & (~SYMOPT_DEFERRED_LOADS));
	FUNC3(hProcess, "srv**symbols*http://msdl.microsoft.com/download/symbols");
	return TRUE;
}