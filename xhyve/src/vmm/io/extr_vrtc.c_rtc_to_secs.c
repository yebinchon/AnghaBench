
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct rtcdev {int sec; int min; int hour; int reg_b; int day_of_month; int month; int year; int century; } ;
struct vrtc {struct vm* vm; struct rtcdev rtcdev; } ;
struct vm {int dummy; } ;
struct timespec {scalar_t__ tv_sec; } ;
struct clocktime {int sec; int min; int hour; int dow; int day; int mon; int year; } ;


 int RTCSB_24HR ;
 int VM_CTR0 (struct vm*,char*) ;
 int VM_CTR2 (struct vm*,char*,int,int) ;
 int VM_CTR3 (struct vm*,char*,int,int,int) ;
 scalar_t__ VRTC_BROKEN_TIME ;
 int bzero (struct clocktime*,int) ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 int rtcget (struct rtcdev*,int,int*) ;

__attribute__((used)) static time_t
rtc_to_secs(struct vrtc *vrtc)
{
 struct clocktime ct;
 struct timespec ts;
 struct rtcdev *rtc;
 struct vm *vm;
 int century, error, hour, pm, year;

 vm = vrtc->vm;
 rtc = &vrtc->rtcdev;

 bzero(&ct, sizeof(struct clocktime));

 error = rtcget(rtc, rtc->sec, &ct.sec);
 if (error || ct.sec < 0 || ct.sec > 59) {
  VM_CTR2(vm, "Invalid RTC sec %#x/%d", rtc->sec, ct.sec);
  goto fail;
 }

 error = rtcget(rtc, rtc->min, &ct.min);
 if (error || ct.min < 0 || ct.min > 59) {
  VM_CTR2(vm, "Invalid RTC min %#x/%d", rtc->min, ct.min);
  goto fail;
 }

 pm = 0;
 hour = rtc->hour;
 if ((rtc->reg_b & RTCSB_24HR) == 0) {
  if (hour & 0x80) {
   hour &= ~0x80;
   pm = 1;
  }
 }
 error = rtcget(rtc, hour, &ct.hour);
 if ((rtc->reg_b & RTCSB_24HR) == 0) {
  if (ct.hour >= 1 && ct.hour <= 12) {
   if (ct.hour == 12)
    ct.hour = 0;
   if (pm)
    ct.hour += 12;
  } else {
   VM_CTR2(vm, "Invalid RTC 12-hour format %#x/%d",
       rtc->hour, ct.hour);
   goto fail;
  }
 }

 if (error || ct.hour < 0 || ct.hour > 23) {
  VM_CTR2(vm, "Invalid RTC hour %#x/%d", rtc->hour, ct.hour);
  goto fail;
 }







 ct.dow = -1;

 error = rtcget(rtc, rtc->day_of_month, &ct.day);
 if (error || ct.day < 1 || ct.day > 31) {
  VM_CTR2(vm, "Invalid RTC mday %#x/%d", rtc->day_of_month,
      ct.day);
  goto fail;
 }

 error = rtcget(rtc, rtc->month, &ct.mon);
 if (error || ct.mon < 1 || ct.mon > 12) {
  VM_CTR2(vm, "Invalid RTC month %#x/%d", rtc->month, ct.mon);
  goto fail;
 }

 error = rtcget(rtc, rtc->year, &year);
 if (error || year < 0 || year > 99) {
  VM_CTR2(vm, "Invalid RTC year %#x/%d", rtc->year, year);
  goto fail;
 }

 error = rtcget(rtc, rtc->century, &century);
 ct.year = century * 100 + year;
 if (error || ct.year < 1900) {
  VM_CTR2(vm, "Invalid RTC century %#x/%d", rtc->century,
      ct.year);
  goto fail;
 }

 error = clock_ct_to_ts(&ct, &ts);
 if (error || ts.tv_sec < 0) {
  VM_CTR3(vm, "Invalid RTC clocktime.date %04d-%02d-%02d",
      ct.year, ct.mon, ct.day);
  VM_CTR3(vm, "Invalid RTC clocktime.time %02d:%02d:%02d",
      ct.hour, ct.min, ct.sec);
  goto fail;
 }
 return (ts.tv_sec);
fail:




 VM_CTR0(vrtc->vm, "Invalid RTC date/time programming detected");
 return (VRTC_BROKEN_TIME);
}
