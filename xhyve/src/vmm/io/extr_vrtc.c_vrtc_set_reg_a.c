
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int reg_a; } ;
struct vrtc {int base_rtctime; int base_uptime; int vm; TYPE_1__ rtcdev; } ;
typedef scalar_t__ sbintime_t ;


 int RTCSA_TUP ;
 int VM_CTR2 (int ,char*,int,int) ;
 scalar_t__ divider_enabled (int) ;
 int sbinuptime () ;
 int vrtc_callout_check (struct vrtc*,scalar_t__) ;
 int vrtc_callout_reset (struct vrtc*,scalar_t__) ;
 scalar_t__ vrtc_freq (struct vrtc*) ;

__attribute__((used)) static void
vrtc_set_reg_a(struct vrtc *vrtc, uint8_t newval)
{
 sbintime_t oldfreq, newfreq;
 uint8_t oldval, changed;

 newval &= ~RTCSA_TUP;
 oldval = vrtc->rtcdev.reg_a;
 oldfreq = vrtc_freq(vrtc);

 if (divider_enabled(oldval) && !divider_enabled(newval)) {
  VM_CTR2(vrtc->vm, "RTC divider held in reset at %#lx/%#llx",
      vrtc->base_rtctime, vrtc->base_uptime);
 } else if (!divider_enabled(oldval) && divider_enabled(newval)) {






  vrtc->base_uptime = sbinuptime();
  VM_CTR2(vrtc->vm, "RTC divider out of reset at %#lx/%#llx",
      vrtc->base_rtctime, vrtc->base_uptime);
 } else {

 }

 vrtc->rtcdev.reg_a = newval;
 changed = oldval ^ newval;
 if (changed) {
  VM_CTR2(vrtc->vm, "RTC reg_a changed from %#x to %#x",
      oldval, newval);
 }




 newfreq = vrtc_freq(vrtc);
 if (newfreq != oldfreq)
  vrtc_callout_reset(vrtc, newfreq);
 else
  vrtc_callout_check(vrtc, newfreq);
}
