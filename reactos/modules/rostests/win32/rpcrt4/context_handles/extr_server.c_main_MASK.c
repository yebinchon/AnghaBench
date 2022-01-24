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
typedef  int RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  hello_v1_0_s_ifspec ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 

int FUNC6()
{
	RPC_STATUS status;
	unsigned int    cMinCalls      = 1;
	unsigned int    cMaxCalls      = 20;
	int i;

	status = FUNC2("ncacn_np", 20, "\\pipe\\hello", NULL);

	if (status)
	{
		FUNC4("RpcServerUseProtseqEp %x\n", status);
		FUNC3(status);
	}

	status = FUNC1(hello_v1_0_s_ifspec, NULL, NULL);

	if (status)
	{
		FUNC4("RpcServerRegisterIf %x\n", status);
	FUNC3(status);
	}

	status = FUNC0(1, 20, FALSE);

	if (status)
	{
		FUNC4("RpcServerListen %x", status);
		FUNC3(status);
	}

	FUNC5("%d", &i);
}