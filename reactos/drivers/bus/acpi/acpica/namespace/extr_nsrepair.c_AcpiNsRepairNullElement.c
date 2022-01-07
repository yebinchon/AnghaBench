
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_16__ {int ReturnFlags; int FullPathname; TYPE_3__* ParentPackage; } ;
struct TYPE_12__ {int ReferenceCount; } ;
struct TYPE_15__ {TYPE_1__ Common; } ;
struct TYPE_13__ {int ReferenceCount; } ;
struct TYPE_14__ {TYPE_2__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_STRING ;
 int AE_AML_OPERAND_TYPE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_4__* AcpiUtCreateBufferObject (int ) ;
 TYPE_4__* AcpiUtCreateIntegerObject (int ) ;
 TYPE_4__* AcpiUtCreateStringObject (int ) ;
 int AcpiUtGetObjectTypeName (TYPE_4__*) ;
 int NsRepairNullElement ;

ACPI_STATUS
AcpiNsRepairNullElement (
    ACPI_EVALUATE_INFO *Info,
    UINT32 ExpectedBtypes,
    UINT32 PackageIndex,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_OPERAND_OBJECT *NewObject;


    ACPI_FUNCTION_NAME (NsRepairNullElement);




    if (ReturnObject)
    {
        return (AE_OK);
    }







    if (ExpectedBtypes & ACPI_RTYPE_INTEGER)
    {


        NewObject = AcpiUtCreateIntegerObject ((UINT64) 0);
    }
    else if (ExpectedBtypes & ACPI_RTYPE_STRING)
    {


        NewObject = AcpiUtCreateStringObject (0);
    }
    else if (ExpectedBtypes & ACPI_RTYPE_BUFFER)
    {


        NewObject = AcpiUtCreateBufferObject (0);
    }
    else
    {


        return (AE_AML_OPERAND_TYPE);
    }

    if (!NewObject)
    {
        return (AE_NO_MEMORY);
    }



    NewObject->Common.ReferenceCount =
        Info->ParentPackage->Common.ReferenceCount;

    ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
        "%s: Converted NULL package element to expected %s at index %u\n",
        Info->FullPathname, AcpiUtGetObjectTypeName (NewObject),
        PackageIndex));

    *ReturnObjectPtr = NewObject;
    Info->ReturnFlags |= ACPI_OBJECT_REPAIRED;
    return (AE_OK);
}
