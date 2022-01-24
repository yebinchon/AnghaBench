#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;
struct TYPE_3__ {int mask; } ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_1__ IOAPIC_ROUTE_ENTRY ;
typedef  int /*<<< orphan*/  Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ IOAPIC_REDTBL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VOID 
FUNC3(ULONG Apic, ULONG Pin)
{
   IOAPIC_ROUTE_ENTRY Entry;

   FUNC0("IOAPICClearPin(Apic %d, Pin %d\n", Apic, Pin);
   /*
    * Disable it in the IO-APIC irq-routing table
    */
   FUNC2(&Entry, 0, sizeof(Entry));
   Entry.mask = 1;

   FUNC1(Apic, IOAPIC_REDTBL + 2 * Pin, *(((PULONG)&Entry) + 0));
   FUNC1(Apic, IOAPIC_REDTBL + 1 + 2 * Pin, *(((PULONG)&Entry) + 1));
}