
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {scalar_t__ esr_pending; struct LAPIC* apic_page; } ;
struct LAPIC {scalar_t__ esr; } ;



void
vlapic_esr_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;

 lapic = vlapic->apic_page;
 lapic->esr = vlapic->esr_pending;
 vlapic->esr_pending = 0;
}
