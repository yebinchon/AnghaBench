
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {int mask; } ;
typedef int * PULONG ;
typedef TYPE_1__ IOAPIC_ROUTE_ENTRY ;
typedef int Entry ;


 int DPRINT (char*,int,int) ;
 int IOAPICWrite (int,scalar_t__,int ) ;
 scalar_t__ IOAPIC_REDTBL ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static VOID
IOAPICClearPin(ULONG Apic, ULONG Pin)
{
   IOAPIC_ROUTE_ENTRY Entry;

   DPRINT("IOAPICClearPin(Apic %d, Pin %d\n", Apic, Pin);



   memset(&Entry, 0, sizeof(Entry));
   Entry.mask = 1;

   IOAPICWrite(Apic, IOAPIC_REDTBL + 2 * Pin, *(((PULONG)&Entry) + 0));
   IOAPICWrite(Apic, IOAPIC_REDTBL + 1 + 2 * Pin, *(((PULONG)&Entry) + 1));
}
