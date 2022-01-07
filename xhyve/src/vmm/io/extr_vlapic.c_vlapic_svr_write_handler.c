
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vlapic {int svr_last; int callout; struct LAPIC* apic_page; } ;
struct LAPIC {int svr; } ;


 int APIC_SVR_ENABLE ;
 int VLAPIC_CTR0 (struct vlapic*,char*) ;
 int VLAPIC_TIMER_LOCK (struct vlapic*) ;
 int VLAPIC_TIMER_UNLOCK (struct vlapic*) ;
 int callout_stop (int *) ;
 int vlapic_icrtmr_write_handler (struct vlapic*) ;
 int vlapic_mask_lvts (struct vlapic*) ;
 scalar_t__ vlapic_periodic_timer (struct vlapic*) ;

void
vlapic_svr_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;
 uint32_t old, new, changed;

 lapic = vlapic->apic_page;

 new = lapic->svr;
 old = vlapic->svr_last;
 vlapic->svr_last = new;

 changed = old ^ new;
 if ((changed & APIC_SVR_ENABLE) != 0) {
  if ((new & APIC_SVR_ENABLE) == 0) {




   VLAPIC_CTR0(vlapic, "vlapic is software-disabled");
   VLAPIC_TIMER_LOCK(vlapic);
   callout_stop(&vlapic->callout);
   VLAPIC_TIMER_UNLOCK(vlapic);
   vlapic_mask_lvts(vlapic);
  } else {




   VLAPIC_CTR0(vlapic, "vlapic is software-enabled");
   if (vlapic_periodic_timer(vlapic))
    vlapic_icrtmr_write_handler(vlapic);
  }
 }
}
