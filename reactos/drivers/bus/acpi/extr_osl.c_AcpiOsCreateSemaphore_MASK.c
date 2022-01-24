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
typedef  scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ CurrentUnits; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Event; } ;
typedef  TYPE_1__* PACPI_SEM ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_SEMAPHORE ;
typedef  int /*<<< orphan*/  ACPI_SEM ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  SynchronizationEvent ; 

ACPI_STATUS
FUNC4(
    UINT32 MaxUnits,
    UINT32 InitialUnits,
    ACPI_SEMAPHORE *OutHandle)
{
    PACPI_SEM Sem;

    if (!OutHandle)
    {
        FUNC0("Bad parameter\n");
        return AE_BAD_PARAMETER;
    }

    Sem = FUNC1(NonPagedPool, sizeof(ACPI_SEM), 'LpcA');
    if (!Sem) return AE_NO_MEMORY;

    Sem->CurrentUnits = InitialUnits;
    FUNC2(&Sem->Event, SynchronizationEvent, Sem->CurrentUnits != 0);
    FUNC3(&Sem->Lock);

    *OutHandle = (ACPI_SEMAPHORE)Sem;

    return AE_OK;
}