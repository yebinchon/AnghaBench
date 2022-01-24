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
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  AcpiGbl_GpeLock ; 
 int /*<<< orphan*/  AcpiGbl_HardwareLock ; 
 int /*<<< orphan*/  AcpiGbl_NamespaceRwLock ; 
 int /*<<< orphan*/  AcpiGbl_OsiMutex ; 
 int /*<<< orphan*/  AcpiGbl_ReferenceCountLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UtMutexInitialize ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    void)
{
    UINT32                  i;
    ACPI_STATUS             Status;


    FUNC1 (UtMutexInitialize);


    /* Create each of the predefined mutex objects */

    for (i = 0; i < ACPI_NUM_MUTEX; i++)
    {
        Status = FUNC4 (i);
        if (FUNC0 (Status))
        {
            FUNC6 (Status);
        }
    }

    /* Create the spinlocks for use at interrupt level or for speed */

    Status = FUNC2 (&AcpiGbl_GpeLock);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    Status = FUNC2 (&AcpiGbl_HardwareLock);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    Status = FUNC2 (&AcpiGbl_ReferenceCountLock);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    /* Mutex for _OSI support */

    Status = FUNC3 (&AcpiGbl_OsiMutex);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    /* Create the reader/writer lock for namespace access */

    Status = FUNC5 (&AcpiGbl_NamespaceRwLock);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    FUNC6 (Status);
}