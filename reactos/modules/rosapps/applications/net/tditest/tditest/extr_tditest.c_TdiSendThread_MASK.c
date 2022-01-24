#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  char UCHAR ;
struct TYPE_3__ {long QuadPart; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PKEVENT ;
typedef  char* NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  KEVENT ;
typedef  int /*<<< orphan*/  Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  LocalAddress ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  OpenError ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  StopEvent ; 
 int /*<<< orphan*/  SynchronizationEvent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TdiTransportObject ; 
 int /*<<< orphan*/  WaitAny ; 

VOID FUNC8(
    PVOID Context)
/*
 * FUNCTION: Send thread
 * ARGUMENTS:
 *     Context = Pointer to context information
 * NOTES:
 *     Transmits an UDP packet every two seconds to ourselves on the chosen port
 */
{
	KEVENT Event;
	PKEVENT Events[2];
	LARGE_INTEGER Timeout;
	NTSTATUS Status = STATUS_SUCCESS;
	UCHAR Data[40]  = "Testing one, two, three, ...";

	if (!OpenError)
		{
			Timeout.QuadPart = 10000000L;           /* Second factor */
			Timeout.QuadPart *= 2;                  /* Number of seconds */
			Timeout.QuadPart = -(Timeout.QuadPart); /* Relative time */

			FUNC1(&Event, SynchronizationEvent, FALSE);

			Events[0] = &StopEvent;
			Events[1] = &Event;

			while (FUNC4(Status))
				{
					/* Wait until timeout or stop flag is set */
 					FUNC3( 2, (PVOID)Events, WaitAny, Executive, KernelMode, FALSE, &Timeout, NULL);

					if (FUNC2(&StopEvent) != 0)
						{
							FUNC6(MAX_TRACE, ("Received terminate signal...\n"));
							break;
						}

					FUNC0("Sending data - '%s'\n", Data);

					Status = FUNC7(TdiTransportObject, TEST_PORT, LocalAddress, Data, sizeof(Data));

					if (!FUNC4(Status))
						FUNC0("Failed sending data (Status = 0x%X)\n", Status);
				}
		}

	FUNC6(MAX_TRACE, ("Terminating send thread...\n"));

	FUNC5(STATUS_SUCCESS);
}