
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_INFO ;
 int AcpiDsIsResultUsed (int *,int *) ;
 int AcpiDsResultPop (int **,int *) ;
 int AcpiUtRemoveReference (int *) ;
 int DsDeleteResultIfNotUsed ;
 int return_VOID ;

void
AcpiDsDeleteResultIfNotUsed (
    ACPI_PARSE_OBJECT *Op,
    ACPI_OPERAND_OBJECT *ResultObj,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (DsDeleteResultIfNotUsed, ResultObj);


    if (!Op)
    {
        ACPI_ERROR ((AE_INFO, "Null Op"));
        return_VOID;
    }

    if (!ResultObj)
    {
        return_VOID;
    }

    if (!AcpiDsIsResultUsed (Op, WalkState))
    {


        Status = AcpiDsResultPop (&ObjDesc, WalkState);
        if (ACPI_SUCCESS (Status))
        {
            AcpiUtRemoveReference (ResultObj);
        }
    }

    return_VOID;
}
