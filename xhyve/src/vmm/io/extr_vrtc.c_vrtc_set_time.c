
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vrtc {int vm; } ;
struct vm {int dummy; } ;


 int VM_CTR1 (int ,char*,int ) ;
 int VM_CTR2 (int ,char*,int,int ) ;
 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 int sbinuptime () ;
 struct vrtc* vm_rtc (struct vm*) ;
 int vrtc_time_update (struct vrtc*,int ,int ) ;

int
vrtc_set_time(struct vm *vm, time_t secs)
{
 struct vrtc *vrtc;
 int error;

 vrtc = vm_rtc(vm);
 VRTC_LOCK(vrtc);
 error = vrtc_time_update(vrtc, secs, sbinuptime());
 VRTC_UNLOCK(vrtc);

 if (error) {
  VM_CTR2(vrtc->vm, "Error %d setting RTC time to %#lx", error,
      secs);
 } else {
  VM_CTR1(vrtc->vm, "RTC time set to %#lx", secs);
 }

 return (error);
}
