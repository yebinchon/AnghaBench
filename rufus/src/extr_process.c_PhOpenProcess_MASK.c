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
struct TYPE_3__ {int /*<<< orphan*/ * UniqueThread; scalar_t__ UniqueProcess; } ;
typedef  int /*<<< orphan*/ * PHANDLE ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ CLIENT_ID ;
typedef  int /*<<< orphan*/  ACCESS_MASK ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  NtOpenProcess ; 
 int /*<<< orphan*/  Ntdll ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

NTSTATUS FUNC6(PHANDLE ProcessHandle, ACCESS_MASK DesiredAccess, HANDLE ProcessId)
{
	NTSTATUS status = STATUS_SUCCESS;
	OBJECT_ATTRIBUTES objectAttributes;
	CLIENT_ID clientId;

	if ((LONG_PTR)ProcessId == (LONG_PTR)FUNC0()) {
		*ProcessHandle = FUNC3();
		return 0;
	}

	FUNC4(NtOpenProcess, Ntdll);
	if (!FUNC2(status))
		return status;

	clientId.UniqueProcess = ProcessId;
	clientId.UniqueThread = NULL;

	FUNC1(&objectAttributes, NULL, 0, NULL, NULL);
	status = FUNC5(ProcessHandle, DesiredAccess, &objectAttributes, &clientId);

	return status;
}