#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ Length; int /*<<< orphan*/ * Pointer; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  scalar_t__ ACPI_STRING ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_LIST ;
typedef  TYPE_1__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_2__ ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__)) ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_OBJECT ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_HANDLE             Handle,
    ACPI_STRING             Pathname,
    ACPI_OBJECT_LIST        *ExternalParams,
    ACPI_BUFFER             *ReturnBuffer,
    ACPI_OBJECT_TYPE        ReturnType)
{
    ACPI_STATUS             Status;
    BOOLEAN                 FreeBufferOnError = FALSE;
    ACPI_HANDLE             TargetHandle;
    char                    *FullPathname;


    FUNC3 (AcpiEvaluateObjectTyped);


    /* Return buffer must be valid */

    if (!ReturnBuffer)
    {
        FUNC9 (AE_BAD_PARAMETER);
    }

    if (ReturnBuffer->Length == ACPI_ALLOCATE_BUFFER)
    {
        FreeBufferOnError = TRUE;
    }

    /* Get a handle here, in order to build an error message if needed */

    TargetHandle = Handle;
    if (Pathname)
    {
        Status = FUNC5 (Handle, Pathname, &TargetHandle);
        if (FUNC1 (Status))
        {
            FUNC9 (Status);
        }
    }

    FullPathname = FUNC6 (TargetHandle);
    if (!FullPathname)
    {
        FUNC9 (AE_NO_MEMORY);
    }

    /* Evaluate the object */

    Status = FUNC4 (TargetHandle, NULL, ExternalParams,
        ReturnBuffer);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    /* Type ANY means "don't care about return value type" */

    if (ReturnType == ACPI_TYPE_ANY)
    {
        goto Exit;
    }

    if (ReturnBuffer->Length == 0)
    {
        /* Error because caller specifically asked for a return value */

        FUNC0 ((AE_INFO, "%s did not return any object",
            FullPathname));
        Status = AE_NULL_OBJECT;
        goto Exit;
    }

    /* Examine the object type returned from EvaluateObject */

    if (((ACPI_OBJECT *) ReturnBuffer->Pointer)->Type == ReturnType)
    {
        goto Exit;
    }

    /* Return object type does not match requested type */

    FUNC0 ((AE_INFO,
        "Incorrect return type from %s - received [%s], requested [%s]",
        FullPathname,
        FUNC8 (((ACPI_OBJECT *) ReturnBuffer->Pointer)->Type),
        FUNC8 (ReturnType)));

    if (FreeBufferOnError)
    {
        /*
         * Free a buffer created via ACPI_ALLOCATE_BUFFER.
         * Note: We use AcpiOsFree here because AcpiOsAllocate was used
         * to allocate the buffer. This purposefully bypasses the
         * (optionally enabled) allocation tracking mechanism since we
         * only want to track internal allocations.
         */
        FUNC7 (ReturnBuffer->Pointer);
        ReturnBuffer->Pointer = NULL;
    }

    ReturnBuffer->Length = 0;
    Status = AE_TYPE;

Exit:
    FUNC2 (FullPathname);
    FUNC9 (Status);
}