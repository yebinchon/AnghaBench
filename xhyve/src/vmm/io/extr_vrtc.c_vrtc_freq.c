
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_a; } ;
struct vrtc {TYPE_1__ rtcdev; } ;
typedef int sbintime_t ;



 scalar_t__ aintr_enabled (struct vrtc*) ;
 scalar_t__ divider_enabled (int) ;
 scalar_t__ pintr_enabled (struct vrtc*) ;
 scalar_t__ uintr_enabled (struct vrtc*) ;
 scalar_t__ update_enabled (struct vrtc*) ;

__attribute__((used)) static sbintime_t
vrtc_freq(struct vrtc *vrtc)
{
 int ratesel;

 static sbintime_t pf[16] = {
  0,
  128 / 256,
  128 / 128,
  128 / 8192,
  128 / 4096,
  128 / 2048,
  128 / 1024,
  128 / 512,
  128 / 256,
  128 / 128,
  128 / 64,
  128 / 32,
  128 / 16,
  128 / 8,
  128 / 4,
  128 / 2,
 };
 if (pintr_enabled(vrtc) && divider_enabled(vrtc->rtcdev.reg_a)) {
  ratesel = vrtc->rtcdev.reg_a & 0xf;
  return (pf[ratesel]);
 } else if (aintr_enabled(vrtc) && update_enabled(vrtc)) {
  return (128);
 } else if (uintr_enabled(vrtc) && update_enabled(vrtc)) {
  return (128);
 } else {
  return (0);
 }
}
