
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 int acpitbl_write16 (int ,int,scalar_t__) ;
 int acpitbl_write32 (int ,int,scalar_t__) ;
 int acpitbl_write64 (int ,int,scalar_t__) ;
 int dsdt ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

void dsdt_fixup(int bus, uint16_t iobase, uint16_t iolimit, uint32_t membase32,
 uint32_t memlimit32, uint64_t membase64, uint64_t memlimit64)
{
 if (bus != 0) {
  fprintf(stderr, "DSDT, unsupported PCI bus (%d)\n", bus);
  exit(-1);
 }

 acpitbl_write16(dsdt, 0xb6, iobase);
 acpitbl_write16(dsdt, 0xb8, (iolimit - 1));
 acpitbl_write16(dsdt, 0xbc, (iolimit - iobase));
 acpitbl_write32(dsdt, 0xc8, membase32);
 acpitbl_write32(dsdt, 0xcc, (memlimit32 - 1));
 acpitbl_write32(dsdt, 0xd4, (memlimit32 - membase32));
 acpitbl_write64(dsdt, 0xe6, membase64);
 acpitbl_write64(dsdt, 0xee, (memlimit64 - 1));
 acpitbl_write64(dsdt, 0xfe, (memlimit64 - membase64));
}
