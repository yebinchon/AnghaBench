
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrtc {int callout; int vm; } ;
typedef int sbintime_t ;


 int SBT_1S ;
 int VM_CTR0 (int ,char*) ;
 int VM_CTR1 (int ,char*,int) ;
 scalar_t__ callout_active (int *) ;
 int callout_reset_sbt (int *,int,int ,int ,struct vrtc*,int ) ;
 int callout_stop (int *) ;
 int vrtc_callout_handler ;

__attribute__((used)) static void
vrtc_callout_reset(struct vrtc *vrtc, sbintime_t freqsbt)
{
 if (freqsbt == 0) {
  if (callout_active(&vrtc->callout)) {
   VM_CTR0(vrtc->vm, "RTC callout stopped");
   callout_stop(&vrtc->callout);
  }
  return;
 }
 VM_CTR1(vrtc->vm, "RTC callout frequency %lld hz", SBT_1S / freqsbt);
 callout_reset_sbt(&vrtc->callout, freqsbt, 0, vrtc_callout_handler,
     vrtc, 0);
}
