
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int NumPackages; scalar_t__ ObjectSpace; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_1__ ACPI_PKG_INFO ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 int ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;
 int AcpiUtGetElementLength ;
 int AcpiUtWalkPackageTree (int *,int *,int ,TYPE_1__*) ;
 int UtGetPackageObjectSize ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtGetPackageObjectSize (
    ACPI_OPERAND_OBJECT *InternalObject,
    ACPI_SIZE *ObjLength)
{
    ACPI_STATUS Status;
    ACPI_PKG_INFO Info;


    ACPI_FUNCTION_TRACE_PTR (UtGetPackageObjectSize, InternalObject);


    Info.Length = 0;
    Info.ObjectSpace = 0;
    Info.NumPackages = 1;

    Status = AcpiUtWalkPackageTree (
        InternalObject, ((void*)0), AcpiUtGetElementLength, &Info);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }






    Info.Length += ACPI_ROUND_UP_TO_NATIVE_WORD (
        sizeof (ACPI_OBJECT)) * (ACPI_SIZE) Info.NumPackages;



    *ObjLength = Info.Length;
    return_ACPI_STATUS (Status);
}
