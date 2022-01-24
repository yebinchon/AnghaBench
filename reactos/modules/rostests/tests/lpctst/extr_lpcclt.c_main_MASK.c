#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {scalar_t__ DataSize; scalar_t__ MessageSize; } ;
struct TYPE_6__ {TYPE_4__ Header; scalar_t__ Data; } ;
typedef  TYPE_1__ SECURITY_QUALITY_OF_SERVICE ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  LPC_MESSAGE ;
typedef  TYPE_1__ LPC_MAX_MESSAGE ;
typedef  int HANDLE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* MyName ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* TEST_PORT_NAME ; 
 int /*<<< orphan*/  TEST_PORT_NAME_U ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

int FUNC11(int argc, char* argv[])
{
   UNICODE_STRING PortName = FUNC5(TEST_PORT_NAME_U);
   NTSTATUS Status;
   HANDLE PortHandle;
   LPC_MAX_MESSAGE Request;
   ULONG ConnectInfo;
   ULONG ConnectInfoLength = 0;
   SECURITY_QUALITY_OF_SERVICE Sqos;

   FUNC8("%s: Lpc test client\n", MyName);

   FUNC8("%s: Connecting to port \"%s\"...\n", MyName, TEST_PORT_NAME);
   ConnectInfoLength = 0;
   FUNC7 (& Sqos, sizeof Sqos);
   Status = FUNC3(&PortHandle,
			  &PortName,
			  & Sqos,
			  0,
			  0,
			  0,
			  NULL,
			  &ConnectInfoLength);
   if (!FUNC1(Status))
     {
	FUNC8("%s: NtConnectPort() failed with status = 0x%08X.\n", MyName, Status);
	return EXIT_FAILURE;
     }

   FUNC8("%s: Connected to \"%s\" with anonymous port 0x%x.\n", MyName, TEST_PORT_NAME, PortHandle);

   FUNC7(& Request, sizeof Request);
   FUNC9(Request.Data, FUNC0());
   Request.Header.DataSize = FUNC10(Request.Data);
   Request.Header.MessageSize = sizeof(LPC_MESSAGE) +
     Request.Header.DataSize;

   FUNC8("%s: Sending to port 0x%x message \"%s\"...\n",
          MyName,
          PortHandle,
	  (char *) Request.Data);
   Status = FUNC4(PortHandle,
			  &Request.Header);
   if (!FUNC1(Status))
     {
	FUNC8("%s: NtRequestPort(0x%x) failed with status = 0x%8X.\n",
               MyName,
               PortHandle,
	       Status);
	return EXIT_FAILURE;
     }

   FUNC8("%s: Sending datagram to port 0x%x succeeded.\n", MyName, PortHandle);

   FUNC6(2000);

   FUNC8("%s: Disconnecting...", MyName);
   FUNC2 (PortHandle);

   return EXIT_SUCCESS;
}