
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ImplicitReturnObj; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiGbl_EnableInterpreterSlack ;
 int AcpiUtRemoveReference (int *) ;
 int DsClearImplicitReturn ;

void
AcpiDsClearImplicitReturn (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_FUNCTION_NAME (DsClearImplicitReturn);





    if (!AcpiGbl_EnableInterpreterSlack)
    {
        return;
    }

    if (WalkState->ImplicitReturnObj)
    {





        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "Removing reference on stale implicit return obj %p\n",
            WalkState->ImplicitReturnObj));

        AcpiUtRemoveReference (WalkState->ImplicitReturnObj);
        WalkState->ImplicitReturnObj = ((void*)0);
    }
}
