
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int AML_RESOURCE_SMALL_HEADER ;
typedef int AML_RESOURCE_LARGE_HEADER ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_GET8 (void*) ;
 int ACPI_RESOURCE_NAME_LARGE ;

UINT8
AcpiUtGetResourceHeaderLength (
    void *Aml)
{
    ACPI_FUNCTION_ENTRY ();




    if (ACPI_GET8 (Aml) & ACPI_RESOURCE_NAME_LARGE)
    {
        return (sizeof (AML_RESOURCE_LARGE_HEADER));
    }
    else
    {
        return (sizeof (AML_RESOURCE_SMALL_HEADER));
    }
}
