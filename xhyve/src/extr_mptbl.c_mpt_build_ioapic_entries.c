
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef TYPE_1__* io_apic_entry_ptr ;
struct TYPE_4__ {int apic_address; int apic_flags; int apic_version; scalar_t__ apic_id; int type; } ;


 int IOAPICENTRY_FLAG_EN ;
 int IOAPIC_PADDR ;
 int IOAPIC_VERSION ;
 int MPCT_ENTRY_IOAPIC ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
mpt_build_ioapic_entries(io_apic_entry_ptr mpei, int id)
{

 memset(mpei, 0, sizeof(*mpei));
 mpei->type = MPCT_ENTRY_IOAPIC;
 mpei->apic_id = (uint8_t) id;
 mpei->apic_version = IOAPIC_VERSION;
 mpei->apic_flags = IOAPICENTRY_FLAG_EN;
 mpei->apic_address = IOAPIC_PADDR;
}
