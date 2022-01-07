
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int State; int DescriptorType; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_GENERIC_STATE ;


 int ACPI_CONTROL_CONDITIONAL_EXECUTING ;
 int ACPI_DESC_TYPE_STATE_CONTROL ;
 int ACPI_FUNCTION_ENTRY () ;
 TYPE_2__* AcpiUtCreateGenericState () ;

ACPI_GENERIC_STATE *
AcpiUtCreateControlState (
    void)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_ENTRY ();




    State = AcpiUtCreateGenericState ();
    if (!State)
    {
        return (((void*)0));
    }



    State->Common.DescriptorType = ACPI_DESC_TYPE_STATE_CONTROL;
    State->Common.State = ACPI_CONTROL_CONDITIONAL_EXECUTING;

    return (State);
}
