
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_2__ {scalar_t__ ApicAddress; } ;
typedef size_t* PULONG ;


 TYPE_1__* IOAPICMap ;
 size_t IOAPIC_IOWIN ;

ULONG IOAPICRead(ULONG Apic, ULONG Offset)
{
  PULONG Base;

  Base = (PULONG)IOAPICMap[Apic].ApicAddress;
  *Base = Offset;
  return *((PULONG)((ULONG)Base + IOAPIC_IOWIN));
}
