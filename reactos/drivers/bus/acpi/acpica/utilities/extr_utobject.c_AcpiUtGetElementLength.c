
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_5__ {int * ThisTargetObj; } ;
struct TYPE_7__ {TYPE_1__ Pkg; } ;
struct TYPE_6__ {int NumPackages; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_2__ ACPI_PKG_INFO ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;




 int ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AcpiUtGetSimpleObjectSize (int *,int *) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtGetElementLength (
    UINT8 ObjectType,
    ACPI_OPERAND_OBJECT *SourceObject,
    ACPI_GENERIC_STATE *State,
    void *Context)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PKG_INFO *Info = (ACPI_PKG_INFO *) Context;
    ACPI_SIZE ObjectSpace;


    switch (ObjectType)
    {
    case 128:




        Status = AcpiUtGetSimpleObjectSize (SourceObject, &ObjectSpace);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        Info->Length += ObjectSpace;
        break;

    case 129:



        Info->NumPackages++;
        State->Pkg.ThisTargetObj = ((void*)0);
        break;

    default:



        return (AE_BAD_PARAMETER);
    }

    return (Status);
}
