
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {size_t (* Handler ) (int ) ;int Context; } ;
struct TYPE_3__ {int EnableRegisterId; int StatusRegisterId; } ;


 int ACPI_CLEAR_STATUS ;
 int ACPI_DISABLE_EVENT ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 int AE_INFO ;
 TYPE_2__* AcpiGbl_FixedEventHandlers ;
 TYPE_1__* AcpiGbl_FixedEventInfo ;
 int AcpiUtGetEventName (size_t) ;
 int AcpiWriteBitRegister (int ,int ) ;
 size_t stub1 (int ) ;

__attribute__((used)) static UINT32
AcpiEvFixedEventDispatch (
    UINT32 Event)
{

    ACPI_FUNCTION_ENTRY ();




    (void) AcpiWriteBitRegister (
        AcpiGbl_FixedEventInfo[Event].StatusRegisterId,
        ACPI_CLEAR_STATUS);





    if (!AcpiGbl_FixedEventHandlers[Event].Handler)
    {
        (void) AcpiWriteBitRegister (
            AcpiGbl_FixedEventInfo[Event].EnableRegisterId,
            ACPI_DISABLE_EVENT);

        ACPI_ERROR ((AE_INFO,
            "No installed handler for fixed event - %s (%u), disabling",
            AcpiUtGetEventName (Event), Event));

        return (ACPI_INTERRUPT_NOT_HANDLED);
    }



    return ((AcpiGbl_FixedEventHandlers[Event].Handler)(
        AcpiGbl_FixedEventHandlers[Event].Context));
}
