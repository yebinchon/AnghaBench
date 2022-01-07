
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SPINLOCK ;


 int DPRINT1 (char*) ;
 int ExFreePoolWithTag (int ,char) ;

void
AcpiOsDeleteLock(
    ACPI_SPINLOCK Handle)
{
    if (!Handle)
    {
        DPRINT1("Bad parameter\n");
        return;
    }

    ExFreePoolWithTag(Handle, 'LpcA');
}
