
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ AcpiUtGetResourceHeaderLength (void*) ;
 scalar_t__ AcpiUtGetResourceLength (void*) ;

UINT32
AcpiUtGetDescriptorLength (
    void *Aml)
{
    ACPI_FUNCTION_ENTRY ();






    return (AcpiUtGetResourceLength (Aml) +
        AcpiUtGetResourceHeaderLength (Aml));
}
