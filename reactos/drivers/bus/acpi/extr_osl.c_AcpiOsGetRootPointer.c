
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_PHYSICAL_ADDRESS ;


 int AcpiFindRootPointer (int *) ;
 int DPRINT (char*) ;

ACPI_PHYSICAL_ADDRESS
AcpiOsGetRootPointer (
    void)
{
    ACPI_PHYSICAL_ADDRESS pa = 0;

    DPRINT("AcpiOsGetRootPointer\n");

    AcpiFindRootPointer(&pa);
    return pa;
}
