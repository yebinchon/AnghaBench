
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int FullPathname; int ReturnFlags; int NodeFlags; } ;
struct TYPE_10__ {scalar_t__ Length; char* Pointer; } ;
struct TYPE_9__ {scalar_t__ Type; } ;
struct TYPE_11__ {TYPE_2__ String; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 scalar_t__ ACPI_TYPE_STRING ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_3__* AcpiUtCreateStringObject (scalar_t__) ;
 int AcpiUtRemoveReference (TYPE_3__*) ;
 int NsRepair_HID ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsRepair_HID (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_OPERAND_OBJECT *NewString;
    char *Source;
    char *Dest;


    ACPI_FUNCTION_NAME (NsRepair_HID);




    if (ReturnObject->Common.Type != ACPI_TYPE_STRING)
    {
        return (AE_OK);
    }

    if (ReturnObject->String.Length == 0)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO,
            Info->FullPathname, Info->NodeFlags,
            "Invalid zero-length _HID or _CID string"));



        Info->ReturnFlags |= ACPI_OBJECT_REPAIRED;
        return (AE_OK);
    }



    NewString = AcpiUtCreateStringObject (ReturnObject->String.Length);
    if (!NewString)
    {
        return (AE_NO_MEMORY);
    }







    Source = ReturnObject->String.Pointer;
    if (*Source == '*')
    {
        Source++;
        NewString->String.Length--;

        ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
            "%s: Removed invalid leading asterisk\n", Info->FullPathname));
    }
    for (Dest = NewString->String.Pointer; *Source; Dest++, Source++)
    {
        *Dest = (char) toupper ((int) *Source);
    }

    AcpiUtRemoveReference (ReturnObject);
    *ReturnObjectPtr = NewString;
    return (AE_OK);
}
