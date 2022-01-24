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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ RuntimeCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  EnableForRun; int /*<<< orphan*/  EnableMask; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_2__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  EvUpdateGpeEnableMask ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC5 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo)
{
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    UINT32                  RegisterBit;


    FUNC1 (EvUpdateGpeEnableMask);


    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        FUNC4 (AE_NOT_EXIST);
    }

    RegisterBit = FUNC3 (GpeEventInfo);

    /* Clear the run bit up front */

    FUNC0 (GpeRegisterInfo->EnableForRun, RegisterBit);

    /* Set the mask bit only if there are references to this GPE */

    if (GpeEventInfo->RuntimeCount)
    {
        FUNC2 (GpeRegisterInfo->EnableForRun, (UINT8) RegisterBit);
    }

    GpeRegisterInfo->EnableMask = GpeRegisterInfo->EnableForRun;
    FUNC4 (AE_OK);
}