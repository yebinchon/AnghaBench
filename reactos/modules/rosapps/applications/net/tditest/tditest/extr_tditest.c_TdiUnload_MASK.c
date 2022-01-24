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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PDRIVER_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ReceiveThread ; 
 int /*<<< orphan*/  SendThread ; 
 int /*<<< orphan*/  StopEvent ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  THREAD_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TdiTransport ; 
 int /*<<< orphan*/  TdiTransportObject ; 

VOID FUNC5(
    PDRIVER_OBJECT DriverObject)
/*
 * FUNCTION: Unload routine
 * ARGUMENTS:
 *     DriverObject = Pointer to a driver object for this driver
 */
{
	PVOID ReceiveThreadObject = 0;
	PVOID SendThreadObject = 0;

	FUNC3(MAX_TRACE, ("Setting stop flag\n"));

	/* Get pointers to the thread objects */
	FUNC2(SendThread, THREAD_ALL_ACCESS, NULL, KernelMode, &SendThreadObject, NULL);
	FUNC2(ReceiveThread, THREAD_ALL_ACCESS, NULL, KernelMode, &ReceiveThreadObject, NULL);

	FUNC0(&StopEvent, 0, FALSE);

	/* Wait for send thread to stop */
	FUNC1(SendThreadObject, Executive, KernelMode, FALSE, NULL);

	/* Wait for receive thread to stop */
	FUNC1(ReceiveThreadObject, Executive, KernelMode, FALSE, NULL);

	/* Close device */
	FUNC4(TdiTransport, TdiTransportObject);
}