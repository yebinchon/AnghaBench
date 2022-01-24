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
 scalar_t__ ACPI_TRACE_LAYER_ALL ; 
 scalar_t__ ACPI_TRACE_LEVEL_ALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ AcpiDbgLayer ; 
 scalar_t__ AcpiDbgLevel ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ AcpiGbl_OriginalDbgLayer ; 
 scalar_t__ AcpiGbl_OriginalDbgLevel ; 
 scalar_t__ AcpiGbl_TraceDbgLayer ; 
 scalar_t__ AcpiGbl_TraceDbgLevel ; 
 TYPE_2__* AcpiGbl_TraceMethodObject ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExStartTraceMethod ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC5 (
    ACPI_NAMESPACE_NODE     *MethodNode,
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{
    char                    *Pathname = NULL;
    BOOLEAN                 Enabled = FALSE;


    FUNC1 (ExStartTraceMethod);


    if (MethodNode)
    {
        Pathname = FUNC4 (MethodNode, TRUE);
    }

    Enabled = FUNC3 (Pathname);
    if (Enabled && !AcpiGbl_TraceMethodObject)
    {
        AcpiGbl_TraceMethodObject = ObjDesc;
        AcpiGbl_OriginalDbgLevel = AcpiDbgLevel;
        AcpiGbl_OriginalDbgLayer = AcpiDbgLayer;
        AcpiDbgLevel = ACPI_TRACE_LEVEL_ALL;
        AcpiDbgLayer = ACPI_TRACE_LAYER_ALL;

        if (AcpiGbl_TraceDbgLevel)
        {
            AcpiDbgLevel = AcpiGbl_TraceDbgLevel;
        }

        if (AcpiGbl_TraceDbgLayer)
        {
            AcpiDbgLayer = AcpiGbl_TraceDbgLayer;
        }
    }

    if (Enabled)
    {
        FUNC2 (ACPI_TRACE_AML_METHOD, TRUE,
            ObjDesc ? ObjDesc->Method.AmlStart : NULL, Pathname);
    }

    if (Pathname)
    {
        FUNC0 (Pathname);
    }
}