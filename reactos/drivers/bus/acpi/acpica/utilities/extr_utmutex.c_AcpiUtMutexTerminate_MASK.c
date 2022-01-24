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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  AcpiGbl_GpeLock ; 
 int /*<<< orphan*/  AcpiGbl_HardwareLock ; 
 int /*<<< orphan*/  AcpiGbl_NamespaceRwLock ; 
 int /*<<< orphan*/  AcpiGbl_OsiMutex ; 
 int /*<<< orphan*/  AcpiGbl_ReferenceCountLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UtMutexTerminate ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5 (
    void)
{
    UINT32                  i;


    FUNC0 (UtMutexTerminate);


    /* Delete each predefined mutex object */

    for (i = 0; i < ACPI_NUM_MUTEX; i++)
    {
        FUNC3 (i);
    }

    FUNC2 (AcpiGbl_OsiMutex);

    /* Delete the spinlocks */

    FUNC1 (AcpiGbl_GpeLock);
    FUNC1 (AcpiGbl_HardwareLock);
    FUNC1 (AcpiGbl_ReferenceCountLock);

    /* Delete the reader/writer lock */

    FUNC4 (&AcpiGbl_NamespaceRwLock);
    return_VOID;
}