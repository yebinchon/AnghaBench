
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_4__ {int logical_dest; } ;
struct TYPE_5__ {TYPE_1__ logical; } ;
struct TYPE_6__ {scalar_t__ mask; TYPE_2__ dest; } ;
typedef int * PULONG ;
typedef TYPE_3__ IOAPIC_ROUTE_ENTRY ;


 int IOAPICRead (size_t,scalar_t__) ;
 int IOAPICWrite (size_t,scalar_t__,int ) ;
 scalar_t__ IOAPIC_REDTBL ;
 size_t* IrqApicMap ;
 int KeGetCurrentProcessorNumber () ;

VOID IOAPICUnmaskIrq(ULONG Irq)
{
   IOAPIC_ROUTE_ENTRY Entry;
   ULONG Apic = IrqApicMap[Irq];

   *(((PULONG)&Entry)+0) = IOAPICRead(Apic, IOAPIC_REDTBL+2*Irq);
   *(((PULONG)&Entry)+1) = IOAPICRead(Apic, IOAPIC_REDTBL+2*Irq+1);
   Entry.dest.logical.logical_dest |= 1 << KeGetCurrentProcessorNumber();
   Entry.mask = 0;
   IOAPICWrite(Apic, IOAPIC_REDTBL+2*Irq+1, *(((PULONG)&Entry)+1));
   IOAPICWrite(Apic, IOAPIC_REDTBL+2*Irq, *(((PULONG)&Entry)+0));
}
