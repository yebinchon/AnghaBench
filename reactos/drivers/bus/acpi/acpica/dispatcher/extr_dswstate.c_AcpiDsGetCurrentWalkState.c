
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * WalkStateList; } ;
typedef int ACPI_WALK_STATE ;
typedef TYPE_1__ ACPI_THREAD_STATE ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int DsGetCurrentWalkState ;

ACPI_WALK_STATE *
AcpiDsGetCurrentWalkState (
    ACPI_THREAD_STATE *Thread)
{
    ACPI_FUNCTION_NAME (DsGetCurrentWalkState);


    if (!Thread)
    {
        return (((void*)0));
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE, "Current WalkState %p\n",
        Thread->WalkStateList));

    return (Thread->WalkStateList);
}
