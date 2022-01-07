
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ThreadId; } ;
struct TYPE_5__ {int DescriptorType; } ;
struct TYPE_7__ {TYPE_2__ Thread; TYPE_1__ Common; } ;
typedef int ACPI_THREAD_STATE ;
typedef scalar_t__ ACPI_THREAD_ID ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 int ACPI_DESC_TYPE_STATE_THREAD ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 scalar_t__ AcpiOsGetThreadId () ;
 TYPE_3__* AcpiUtCreateGenericState () ;

ACPI_THREAD_STATE *
AcpiUtCreateThreadState (
    void)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_ENTRY ();




    State = AcpiUtCreateGenericState ();
    if (!State)
    {
        return (((void*)0));
    }



    State->Common.DescriptorType = ACPI_DESC_TYPE_STATE_THREAD;
    State->Thread.ThreadId = AcpiOsGetThreadId ();



    if (!State->Thread.ThreadId)
    {
        ACPI_ERROR ((AE_INFO, "Invalid zero ID from AcpiOsGetThreadId"));
        State->Thread.ThreadId = (ACPI_THREAD_ID) 1;
    }

    return ((ACPI_THREAD_STATE *) State);
}
