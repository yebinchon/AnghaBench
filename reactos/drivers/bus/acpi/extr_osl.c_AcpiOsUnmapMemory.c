
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;


 int ASSERT (void*) ;
 int DPRINT (char*,void*,int ) ;
 int MmUnmapIoSpace (void*,int ) ;

void
AcpiOsUnmapMemory (
    void *virt,
    ACPI_SIZE length)
{
    DPRINT("AcpiOsMapMemory(phys 0x%p  size 0x%X)\n", virt, length);

    ASSERT(virt);

    MmUnmapIoSpace(virt, length);
}
