
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;

 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_GET_DESCRIPTOR_TYPE (void*) ;
 int AcpiUtGetDescriptorName (void*) ;
 int FALSE ;
 int TRUE ;
 int UtValidInternalObject ;

BOOLEAN
AcpiUtValidInternalObject (
    void *Object)
{

    ACPI_FUNCTION_NAME (UtValidInternalObject);




    if (!Object)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "**** Null Object Ptr\n"));
        return (FALSE);
    }



    switch (ACPI_GET_DESCRIPTOR_TYPE (Object))
    {
    case 128:



        return (TRUE);

    default:

        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "%p is not an ACPI operand obj [%s]\n",
            Object, AcpiUtGetDescriptorName (Object)));
        break;
    }

    return (FALSE);
}
