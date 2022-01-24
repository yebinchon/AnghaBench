#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  timeouts2; int /*<<< orphan*/  dcb2; int /*<<< orphan*/  timeouts1; int /*<<< orphan*/  dcb1; int /*<<< orphan*/  string; } ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  COMMCONFIG ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int*) ; 
 unsigned int TEST_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*) ; 
 TYPE_1__* test ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
	char port_name[] = "COMx";
	char port = 0;
	unsigned int i;
	char *ptr;

	/* Some of these tests require a valid COM port.  This loop will try to find
	   a valid port. */
	for(port_name[3] = '1'; port_name[3] <= '9'; port_name[3]++)
	{
		COMMCONFIG commconfig;
		DWORD size = sizeof(COMMCONFIG);

		if(FUNC0(port_name, &commconfig, &size))
		{
			port = port_name[3];
			break;
		}
	}

	if(!port)
		FUNC7("Could not find a valid COM port.  Some tests will be skipped.\n");

	for(i = 0; i < TEST_COUNT; i++)
	{
                char string[sizeof(test[i].string)];

                FUNC1(string, test[i].string);

		/* Check if this test case needs a valid COM port. */
		ptr = FUNC2(string, "COMx");

		/* If required, substitute valid port number into device control string. */
		if(ptr)
		{
			if(port)
				ptr[3] = port;
			else
				continue;
		}

		FUNC3(string, &test[i], 0x00, &test[i].dcb1);
		FUNC3(string, &test[i], 0xff, &test[i].dcb2);
		FUNC4(string, &test[i], 0x00, &test[i].dcb1, &test[i].timeouts1);
		FUNC4(string, &test[i], 0xff, &test[i].dcb2, &test[i].timeouts2);

		FUNC6(string, &test[i], 0x00, &test[i].dcb1);
		FUNC6(string, &test[i], 0xff, &test[i].dcb2);
		FUNC5(string, &test[i], 0x00, &test[i].dcb1, &test[i].timeouts1);
		FUNC5(string, &test[i], 0xff, &test[i].dcb2, &test[i].timeouts2);
	}
}