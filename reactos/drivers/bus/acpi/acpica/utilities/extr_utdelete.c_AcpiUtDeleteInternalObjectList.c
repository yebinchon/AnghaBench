
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_FREE (int **) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AcpiUtRemoveReference (int *) ;

void
AcpiUtDeleteInternalObjectList (
    ACPI_OPERAND_OBJECT **ObjList)
{
    ACPI_OPERAND_OBJECT **InternalObj;


    ACPI_FUNCTION_ENTRY ();




    for (InternalObj = ObjList; *InternalObj; InternalObj++)
    {
        AcpiUtRemoveReference (*InternalObj);
    }



    ACPI_FREE (ObjList);
    return;
}
