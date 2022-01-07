
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int **) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 int ACPI_REFCLASS_ARG ;
 int AE_OK ;
 int AcpiDsMethodDataSetValue (int ,size_t,int *,int *) ;
 int DsMethodDataInitArgs ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsMethodDataInitArgs (
    ACPI_OPERAND_OBJECT **Params,
    UINT32 MaxParamCount,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    UINT32 Index = 0;


    ACPI_FUNCTION_TRACE_PTR (DsMethodDataInitArgs, Params);


    if (!Params)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "No parameter list passed to method\n"));
        return_ACPI_STATUS (AE_OK);
    }



    while ((Index < ACPI_METHOD_NUM_ARGS) &&
           (Index < MaxParamCount) &&
            Params[Index])
    {





        Status = AcpiDsMethodDataSetValue (
            ACPI_REFCLASS_ARG, Index, Params[Index], WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        Index++;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "%u args passed to method\n", Index));
    return_ACPI_STATUS (AE_OK);
}
