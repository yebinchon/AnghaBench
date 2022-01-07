
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_HANDLE ;


 int AcpiEvInitializeRegion (int *) ;
 int * AcpiNsGetAttachedObject (int ) ;

ACPI_STATUS
AcpiDsInitializeRegion (
    ACPI_HANDLE ObjHandle)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_STATUS Status;


    ObjDesc = AcpiNsGetAttachedObject (ObjHandle);



    Status = AcpiEvInitializeRegion (ObjDesc);
    return (Status);
}
