
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_7__ {char* Pointer; scalar_t__ Length; } ;
struct TYPE_8__ {TYPE_1__ String; } ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_STRING ;
 int AE_INFO ;
 TYPE_2__* AcpiUtCreateInternalObject (int ) ;
 int AcpiUtRemoveReference (TYPE_2__*) ;
 int UtCreateStringObject ;
 int return_PTR (TYPE_2__*) ;

ACPI_OPERAND_OBJECT *
AcpiUtCreateStringObject (
    ACPI_SIZE StringSize)
{
    ACPI_OPERAND_OBJECT *StringDesc;
    char *String;


    ACPI_FUNCTION_TRACE_U32 (UtCreateStringObject, StringSize);




    StringDesc = AcpiUtCreateInternalObject (ACPI_TYPE_STRING);
    if (!StringDesc)
    {
        return_PTR (((void*)0));
    }





    String = ACPI_ALLOCATE_ZEROED (StringSize + 1);
    if (!String)
    {
        ACPI_ERROR ((AE_INFO, "Could not allocate size %u",
            (UINT32) StringSize));

        AcpiUtRemoveReference (StringDesc);
        return_PTR (((void*)0));
    }



    StringDesc->String.Pointer = String;
    StringDesc->String.Length = (UINT32) StringSize;



    return_PTR (StringDesc);
}
