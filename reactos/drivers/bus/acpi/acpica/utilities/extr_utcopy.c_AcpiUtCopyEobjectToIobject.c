
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Type; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_1__ ACPI_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AcpiUtCopyEpackageToIpackage (TYPE_1__*,int **) ;
 int AcpiUtCopyEsimpleToIsimple (TYPE_1__*,int **) ;
 int UtCopyEobjectToIobject ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtCopyEobjectToIobject (
    ACPI_OBJECT *ExternalObject,
    ACPI_OPERAND_OBJECT **InternalObject)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (UtCopyEobjectToIobject);


    if (ExternalObject->Type == ACPI_TYPE_PACKAGE)
    {
        Status = AcpiUtCopyEpackageToIpackage (
            ExternalObject, InternalObject);
    }
    else
    {



        Status = AcpiUtCopyEsimpleToIsimple (ExternalObject,
            InternalObject);
    }

    return_ACPI_STATUS (Status);
}
