
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef void* PVOID ;
typedef TYPE_1__ PHYSICAL_ADDRESS ;
typedef int ACPI_SIZE ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 int DPRINT (char*,scalar_t__,int ) ;
 int DPRINT1 (char*) ;
 void* MmMapIoSpace (TYPE_1__,int ,int ) ;
 int MmNonCached ;

void *
AcpiOsMapMemory (
    ACPI_PHYSICAL_ADDRESS phys,
    ACPI_SIZE length)
{
    PHYSICAL_ADDRESS Address;
    PVOID Ptr;

    DPRINT("AcpiOsMapMemory(phys 0x%p  size 0x%X)\n", phys, length);

    Address.QuadPart = (ULONG)phys;
    Ptr = MmMapIoSpace(Address, length, MmNonCached);
    if (!Ptr)
    {
        DPRINT1("Mapping failed\n");
    }

    return Ptr;
}
