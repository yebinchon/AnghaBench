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
struct TYPE_5__ {int /*<<< orphan*/ * AmlStart; } ;
struct TYPE_6__ {TYPE_1__ Method; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TRACE_AML_METHOD ; 
 int ACPI_TRACE_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  AcpiDbgLayer ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiGbl_OriginalDbgLayer ; 
 int /*<<< orphan*/  AcpiGbl_OriginalDbgLevel ; 
 int AcpiGbl_TraceFlags ; 
 int /*<<< orphan*/ * AcpiGbl_TraceMethodName ; 
 TYPE_2__* AcpiGbl_TraceMethodObject ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExStopTraceMethod ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC5 (
    ACPI_NAMESPACE_NODE     *MethodNode,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{
    char                    *Pathname = NULL;
    BOOLEAN                 Enabled;


    FUNC1 (ExStopTraceMethod);


    if (MethodNode)
    {
        Pathname = FUNC4 (MethodNode, TRUE);
    }

    Enabled = FUNC3 (NULL);

    if (Enabled)
    {
        FUNC2 (ACPI_TRACE_AML_METHOD, FALSE,
            ObjDesc ? ObjDesc->Method.AmlStart : NULL, Pathname);
    }

    /* Check whether the tracer should be stopped */

    if (AcpiGbl_TraceMethodObject == ObjDesc)
    {
        /* Disable further tracing if type is one-shot */

        if (AcpiGbl_TraceFlags & ACPI_TRACE_ONESHOT)
        {
            AcpiGbl_TraceMethodName = NULL;
        }

        AcpiDbgLevel = AcpiGbl_OriginalDbgLevel;
        AcpiDbgLayer = AcpiGbl_OriginalDbgLayer;
        AcpiGbl_TraceMethodObject = NULL;
    }

    if (Pathname)
    {
        FUNC0 (Pathname);
    }
}