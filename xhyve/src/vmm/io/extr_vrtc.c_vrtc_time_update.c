
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct rtcdev {int alarm_sec; int alarm_min; int alarm_hour; int sec; int min; int hour; int reg_c; } ;
struct vrtc {scalar_t__ base_rtctime; scalar_t__ base_uptime; int vm; struct rtcdev rtcdev; } ;
typedef scalar_t__ sbintime_t ;


 int EBUSY ;
 int RTCIR_ALARM ;
 int RTCIR_UPDATE ;
 int VM_CTR0 (int ,char*) ;
 int VM_CTR2 (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ VRTC_BROKEN_TIME ;
 scalar_t__ aintr_enabled (struct vrtc*) ;
 scalar_t__ rtc_halted (struct vrtc*) ;
 int secs_to_rtc (scalar_t__,struct vrtc*,int ) ;
 scalar_t__ uintr_enabled (struct vrtc*) ;
 int vrtc_set_reg_c (struct vrtc*,int) ;

__attribute__((used)) static int
vrtc_time_update(struct vrtc *vrtc, time_t newtime, sbintime_t newbase)
{
 struct rtcdev *rtc;
 sbintime_t oldbase;
 time_t oldtime;
 uint8_t alarm_sec, alarm_min, alarm_hour;

 rtc = &vrtc->rtcdev;
 alarm_sec = rtc->alarm_sec;
 alarm_min = rtc->alarm_min;
 alarm_hour = rtc->alarm_hour;

 oldtime = vrtc->base_rtctime;
 VM_CTR2(vrtc->vm, "Updating RTC secs from %#lx to %#lx",
     oldtime, newtime);

 oldbase = vrtc->base_uptime;
 VM_CTR2(vrtc->vm, "Updating RTC base uptime from %#llx to %#llx",
     oldbase, newbase);
 vrtc->base_uptime = newbase;

 if (newtime == oldtime)
  return (0);






 if (newtime == VRTC_BROKEN_TIME) {
  vrtc->base_rtctime = VRTC_BROKEN_TIME;
  return (0);
 }




 if (rtc_halted(vrtc)) {
  VM_CTR0(vrtc->vm, "RTC update halted by guest");
  return (EBUSY);
 }

 do {







  if (aintr_enabled(vrtc) && oldtime != VRTC_BROKEN_TIME)
   vrtc->base_rtctime++;
  else
   vrtc->base_rtctime = newtime;

  if (aintr_enabled(vrtc)) {




   secs_to_rtc(vrtc->base_rtctime, vrtc, 0);

   if ((alarm_sec >= 0xC0 || alarm_sec == rtc->sec) &&
       (alarm_min >= 0xC0 || alarm_min == rtc->min) &&
       (alarm_hour >= 0xC0 || alarm_hour == rtc->hour)) {
    vrtc_set_reg_c(vrtc, rtc->reg_c | RTCIR_ALARM);
   }
  }
 } while (vrtc->base_rtctime != newtime);

 if (uintr_enabled(vrtc))
  vrtc_set_reg_c(vrtc, rtc->reg_c | RTCIR_UPDATE);

 return (0);
}
