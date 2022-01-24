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
typedef  int /*<<< orphan*/  PKSTART_ROUTINE ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_OSD_EXEC_CALLBACK ;
typedef  int /*<<< orphan*/  ACPI_EXECUTE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  THREAD_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    ACPI_EXECUTE_TYPE       Type,
    ACPI_OSD_EXEC_CALLBACK  Function,
    void                    *Context)
{
    HANDLE ThreadHandle;
    OBJECT_ATTRIBUTES ObjectAttributes;
    NTSTATUS Status;

    FUNC0("AcpiOsExecute\n");

    FUNC1(&ObjectAttributes,
                               NULL,
                               OBJ_KERNEL_HANDLE,
                               NULL,
                               NULL);

    Status = FUNC3(&ThreadHandle,
                                  THREAD_ALL_ACCESS,
                                  &ObjectAttributes,
                                  NULL,
                                  NULL,
                                  (PKSTART_ROUTINE)Function,
                                  Context);
    if (!FUNC2(Status))
        return AE_ERROR;

    FUNC4(ThreadHandle);

    return AE_OK;
}