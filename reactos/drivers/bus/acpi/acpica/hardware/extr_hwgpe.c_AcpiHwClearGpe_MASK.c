#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  StatusAddress; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_2__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC3 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo)
{
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    ACPI_STATUS             Status;
    UINT32                  RegisterBit;


    FUNC0 ();

    /* Get the info block for the entire GPE register */

    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return (AE_NOT_EXIST);
    }

    /*
     * Write a one to the appropriate bit in the status register to
     * clear this GPE.
     */
    RegisterBit = FUNC1 (GpeEventInfo);

    Status = FUNC2 (RegisterBit, &GpeRegisterInfo->StatusAddress);
    return (Status);
}