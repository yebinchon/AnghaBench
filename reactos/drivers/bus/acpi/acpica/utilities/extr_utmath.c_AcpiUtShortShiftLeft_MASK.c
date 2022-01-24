#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ Lo; scalar_t__ Hi; } ;
struct TYPE_4__ {int /*<<< orphan*/  Full; TYPE_1__ Part; } ;
typedef  TYPE_2__ UINT64_OVERLAY ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  UtShortShiftLeft ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    UINT64                  Operand,
    UINT32                  Count,
    UINT64                  *OutResult)
{
    UINT64_OVERLAY          OperandOvl;


    FUNC0 (UtShortShiftLeft);


    OperandOvl.Full = Operand;

    if ((Count & 63) >= 32)
    {
        OperandOvl.Part.Hi = OperandOvl.Part.Lo;
        OperandOvl.Part.Lo = 0;
        Count = (Count & 63) - 32;
    }
    FUNC1 (OperandOvl.Part.Hi,
        OperandOvl.Part.Lo, Count);

    /* Return only what was requested */

    if (OutResult)
    {
        *OutResult = OperandOvl.Full;
    }

    FUNC2 (AE_OK);
}