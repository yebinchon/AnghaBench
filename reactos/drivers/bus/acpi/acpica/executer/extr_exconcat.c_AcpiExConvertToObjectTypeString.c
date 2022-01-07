
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Pointer; } ;
struct TYPE_7__ {int Type; } ;
struct TYPE_9__ {TYPE_2__ String; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_3__* AcpiUtCreateStringObject (scalar_t__) ;
 char* AcpiUtGetTypeName (int ) ;
 int strcat (int ,char const*) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static ACPI_STATUS
AcpiExConvertToObjectTypeString (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_OPERAND_OBJECT **ResultDesc)
{
    ACPI_OPERAND_OBJECT *ReturnDesc;
    const char *TypeString;


    TypeString = AcpiUtGetTypeName (ObjDesc->Common.Type);

    ReturnDesc = AcpiUtCreateStringObject (
        ((ACPI_SIZE) strlen (TypeString) + 9));
    if (!ReturnDesc)
    {
        return (AE_NO_MEMORY);
    }

    strcpy (ReturnDesc->String.Pointer, "[");
    strcat (ReturnDesc->String.Pointer, TypeString);
    strcat (ReturnDesc->String.Pointer, " Object]");

    *ResultDesc = ReturnDesc;
    return (AE_OK);
}
