
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ImplicitReturnObj; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiDsClearImplicitReturn (TYPE_1__*) ;
 int AcpiGbl_EnableInterpreterSlack ;
 int AcpiUtAddReference (int *) ;
 int DsDoImplicitReturn ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

BOOLEAN
AcpiDsDoImplicitReturn (
    ACPI_OPERAND_OBJECT *ReturnDesc,
    ACPI_WALK_STATE *WalkState,
    BOOLEAN AddReference)
{
    ACPI_FUNCTION_NAME (DsDoImplicitReturn);






    if ((!AcpiGbl_EnableInterpreterSlack) ||
        (!ReturnDesc))
    {
        return (FALSE);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "Result %p will be implicitly returned; Prev=%p\n",
        ReturnDesc,
        WalkState->ImplicitReturnObj));







    if (WalkState->ImplicitReturnObj)
    {
        if (WalkState->ImplicitReturnObj == ReturnDesc)
        {
            return (TRUE);
        }
        AcpiDsClearImplicitReturn (WalkState);
    }



    WalkState->ImplicitReturnObj = ReturnDesc;
    if (AddReference)
    {
        AcpiUtAddReference (ReturnDesc);
    }

    return (TRUE);
}
