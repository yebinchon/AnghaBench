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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  DisableForDispatch; scalar_t__ RuntimeCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_6__ {int MaskForRun; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_2__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvMaskGpe ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo,
    BOOLEAN                 IsMasked)
{
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    UINT32                  RegisterBit;


    FUNC1 (EvMaskGpe);


    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        FUNC5 (AE_NOT_EXIST);
    }

    RegisterBit = FUNC3 (GpeEventInfo);

    /* Perform the action */

    if (IsMasked)
    {
        if (RegisterBit & GpeRegisterInfo->MaskForRun)
        {
            FUNC5 (AE_BAD_PARAMETER);
        }

        (void) FUNC4 (GpeEventInfo, ACPI_GPE_DISABLE);
        FUNC2 (GpeRegisterInfo->MaskForRun, (UINT8) RegisterBit);
    }
    else
    {
        if (!(RegisterBit & GpeRegisterInfo->MaskForRun))
        {
            FUNC5 (AE_BAD_PARAMETER);
        }

        FUNC0 (GpeRegisterInfo->MaskForRun, (UINT8) RegisterBit);
        if (GpeEventInfo->RuntimeCount &&
            !GpeEventInfo->DisableForDispatch)
        {
            (void) FUNC4 (GpeEventInfo, ACPI_GPE_ENABLE);
        }
    }

    FUNC5 (AE_OK);
}