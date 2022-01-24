#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  AmlOpName; int /*<<< orphan*/  Aml; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TRACE_AML_OPCODE ; 
 int ACPI_TRACE_OPCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int AcpiGbl_TraceFlags ; 
 int /*<<< orphan*/  ExStopTraceOpcode ; 
 int /*<<< orphan*/  FALSE ; 

void
FUNC3 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_WALK_STATE         *WalkState)
{

    FUNC0 (ExStopTraceOpcode);


    if (FUNC2 (NULL) &&
        (AcpiGbl_TraceFlags & ACPI_TRACE_OPCODE))
    {
        FUNC1 (ACPI_TRACE_AML_OPCODE, FALSE,
            Op->Common.Aml, Op->Common.AmlOpName);
    }
}