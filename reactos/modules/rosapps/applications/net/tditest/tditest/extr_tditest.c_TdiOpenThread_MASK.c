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
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  PKEVENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LocalAddress ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OpenError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TdiTransport ; 
 int /*<<< orphan*/  TdiTransportObject ; 
 int /*<<< orphan*/  UDP_DEVICE_NAME ; 

VOID FUNC6(
    PVOID Context)
/*
 * FUNCTION: Open thread
 * ARGUMENTS:
 *     Context = Pointer to context information (event)
 */
{
	NTSTATUS Status;

	FUNC3(MAX_TRACE, ("Called.\n"));

	OpenError = TRUE;

	Status = FUNC4(UDP_DEVICE_NAME, TEST_PORT, &TdiTransport, &TdiTransportObject);

	if (FUNC2(Status))
		{
			Status = FUNC5(TdiTransportObject, &LocalAddress);

			if (FUNC2(Status))
				{
					OpenError = FALSE;
					FUNC0("Using local IP address 0x%X\n", LocalAddress);
				}
			else
				{
					FUNC3(MIN_TRACE, ("Unable to determine local IP address.\n"));
				}
			}
	else
		FUNC3(MIN_TRACE, ("Cannot open transport (Status = 0x%X).\n", Status));

	FUNC3(MAX_TRACE, ("Setting close event.\n"));

	FUNC1((PKEVENT)Context, 0, FALSE);

	FUNC3(MIN_TRACE, ("Leaving.\n"));
}