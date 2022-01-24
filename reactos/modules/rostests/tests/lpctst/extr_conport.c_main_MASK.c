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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/ * HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/ * ConnectPort ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * QueryObject ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * YieldExecution ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

FUNC6( int argc, char * argv[] )
{
	HINSTANCE ntdll;

	if (argc != 2)
	{
		FUNC5("WNT LPC Port Connector\n");
		FUNC5("Usage: %s [port_name]\n",argv[0]);
		FUNC4(EXIT_FAILURE);
	}
	FUNC5("LoadLibrary(NTDLL)\n");
	ntdll = FUNC2("NTDLL");
	if (ntdll == NULL)
	{
		FUNC5("Could not load NTDLL\n");
		return EXIT_FAILURE;
	}
	FUNC5("GetProcAddress(NTDLL.NtConnectPort)\n");
	ConnectPort = (VOID*) FUNC1(
					ntdll,
					"NtConnectPort"
					);
	if (ConnectPort == NULL)
	{
		FUNC0(ntdll);
		FUNC5("Could not find NTDLL.NtConnectPort\n");
		return EXIT_FAILURE;
	}
	FUNC5("GetProcAddress(NTDLL.NtQueryObject)\n");
	QueryObject = (VOID*) FUNC1(
					ntdll,
					"NtQueryObject"
					);
	if (QueryObject == NULL)
	{
		FUNC0(ntdll);
		FUNC5("Could not find NTDLL.NtQueryObject\n");
		return EXIT_FAILURE;
	}
	FUNC5("GetProcAddress(NTDLL.NtYieldExecution)\n");
	YieldExecution = (VOID*) FUNC1(
					ntdll,
					"NtYieldExecution"
					);
	if (YieldExecution == NULL)
	{
		FUNC0(ntdll);
		FUNC5("Could not find NTDLL.NtYieldExecution\n");
		return EXIT_FAILURE;
	}
	FUNC5("TryConnectPort(%s)\n",argv[1]);
	FUNC3(argv[1]);
	FUNC5("Done\n");
	return EXIT_SUCCESS;
}