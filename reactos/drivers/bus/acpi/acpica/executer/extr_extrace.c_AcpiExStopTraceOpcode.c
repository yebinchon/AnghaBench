
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AmlOpName; int Aml; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_TRACE_AML_OPCODE ;
 int ACPI_TRACE_OPCODE ;
 int ACPI_TRACE_POINT (int ,int ,int ,int ) ;
 scalar_t__ AcpiExInterpreterTraceEnabled (int *) ;
 int AcpiGbl_TraceFlags ;
 int ExStopTraceOpcode ;
 int FALSE ;

void
AcpiExStopTraceOpcode (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState)
{

    ACPI_FUNCTION_NAME (ExStopTraceOpcode);


    if (AcpiExInterpreterTraceEnabled (((void*)0)) &&
        (AcpiGbl_TraceFlags & ACPI_TRACE_OPCODE))
    {
        ACPI_TRACE_POINT (ACPI_TRACE_AML_OPCODE, FALSE,
            Op->Common.Aml, Op->Common.AmlOpName);
    }
}
