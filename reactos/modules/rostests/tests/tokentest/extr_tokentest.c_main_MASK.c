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
typedef  int NTSTATUS ;
typedef  int HANDLE ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  SE_CREATE_TOKEN_NAME ; 
 int TOKEN_QUERY ; 
 int TOKEN_QUERY_SOURCE ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int
FUNC9(int argc, char* argv[])
{
	NTSTATUS Status;
	HANDLE hSystemToken;
	CHAR buffer[512];
	HANDLE hOurToken;

        FUNC8("Current process Token:\n");

        Status=FUNC6(FUNC4(), TOKEN_QUERY|TOKEN_QUERY_SOURCE, &hOurToken);
	if ( FUNC5(Status) )
	{
	  FUNC2(hOurToken);
	  FUNC0(hOurToken);
	}
	else
	{
	  FUNC8("ZwOpenProcessToken() failed: 0x%08x\n", Status);
	}

//#define ENABLE_PRIVILEGE
#ifdef ENABLE_PRIVILEGE
    EnablePrivilege(SE_CREATE_TOKEN_NAME);
#endif

	// Now do the other one
	Status = FUNC1(&hSystemToken);
	if ( FUNC5(Status) )
	{
		FUNC8("System Token: 0x%08x\n", hSystemToken);
		FUNC2(hSystemToken);
		FUNC0(hSystemToken);
	}
	else
	{
		FUNC8("CreateInitialSystemToken() return: 0x%08x\n", Status);
	}

	FUNC8("press return");
	FUNC7(buffer);

	return 0;
}