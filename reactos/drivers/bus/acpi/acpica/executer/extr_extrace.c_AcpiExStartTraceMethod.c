
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * AmlStart; } ;
struct TYPE_6__ {TYPE_1__ Method; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_TRACE_AML_METHOD ;
 scalar_t__ ACPI_TRACE_LAYER_ALL ;
 scalar_t__ ACPI_TRACE_LEVEL_ALL ;
 int ACPI_TRACE_POINT (int ,int ,int *,char*) ;
 scalar_t__ AcpiDbgLayer ;
 scalar_t__ AcpiDbgLevel ;
 scalar_t__ AcpiExInterpreterTraceEnabled (char*) ;
 scalar_t__ AcpiGbl_OriginalDbgLayer ;
 scalar_t__ AcpiGbl_OriginalDbgLevel ;
 scalar_t__ AcpiGbl_TraceDbgLayer ;
 scalar_t__ AcpiGbl_TraceDbgLevel ;
 TYPE_2__* AcpiGbl_TraceMethodObject ;
 char* AcpiNsGetNormalizedPathname (int *,int ) ;
 int ExStartTraceMethod ;
 scalar_t__ FALSE ;
 int TRUE ;

void
AcpiExStartTraceMethod (
    ACPI_NAMESPACE_NODE *MethodNode,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    char *Pathname = ((void*)0);
    BOOLEAN Enabled = FALSE;


    ACPI_FUNCTION_NAME (ExStartTraceMethod);


    if (MethodNode)
    {
        Pathname = AcpiNsGetNormalizedPathname (MethodNode, TRUE);
    }

    Enabled = AcpiExInterpreterTraceEnabled (Pathname);
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
        ACPI_TRACE_POINT (ACPI_TRACE_AML_METHOD, TRUE,
            ObjDesc ? ObjDesc->Method.AmlStart : ((void*)0), Pathname);
    }

    if (Pathname)
    {
        ACPI_FREE (Pathname);
    }
}
