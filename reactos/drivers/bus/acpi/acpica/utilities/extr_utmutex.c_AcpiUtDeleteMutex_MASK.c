#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ThreadId; int /*<<< orphan*/ * Mutex; } ;
typedef  size_t ACPI_MUTEX_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ACPI_MUTEX_NOT_ACQUIRED ; 
 TYPE_1__* AcpiGbl_MutexInfo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UtDeleteMutex ; 
 int /*<<< orphan*/  return_VOID ; 

__attribute__((used)) static void
FUNC2 (
    ACPI_MUTEX_HANDLE       MutexId)
{

    FUNC0 (UtDeleteMutex, MutexId);


    FUNC1 (AcpiGbl_MutexInfo[MutexId].Mutex);

    AcpiGbl_MutexInfo[MutexId].Mutex = NULL;
    AcpiGbl_MutexInfo[MutexId].ThreadId = ACPI_MUTEX_NOT_ACQUIRED;

    return_VOID;
}