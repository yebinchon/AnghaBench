
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_7__ {int Value; int * Object; } ;
struct TYPE_6__ {int DescriptorType; } ;
struct TYPE_8__ {TYPE_2__ Update; TYPE_1__ Common; } ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 int ACPI_DESC_TYPE_STATE_UPDATE ;
 int ACPI_FUNCTION_ENTRY () ;
 TYPE_3__* AcpiUtCreateGenericState () ;

ACPI_GENERIC_STATE *
AcpiUtCreateUpdateState (
    ACPI_OPERAND_OBJECT *Object,
    UINT16 Action)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_ENTRY ();




    State = AcpiUtCreateGenericState ();
    if (!State)
    {
        return (((void*)0));
    }



    State->Common.DescriptorType = ACPI_DESC_TYPE_STATE_UPDATE;
    State->Update.Object = Object;
    State->Update.Value = Action;
    return (State);
}
