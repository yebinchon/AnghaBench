
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PFAST_MUTEX ;
typedef scalar_t__ ACPI_MUTEX ;


 int DPRINT1 (char*) ;
 int ExReleaseFastMutex (int ) ;

void
AcpiOsReleaseMutex(
    ACPI_MUTEX Handle)
{
    if (!Handle)
    {
        DPRINT1("Bad parameter\n");
        return;
    }

    ExReleaseFastMutex((PFAST_MUTEX)Handle);
}
