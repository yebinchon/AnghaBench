
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_a; } ;
struct vrtc {scalar_t__ base_rtctime; TYPE_1__ rtcdev; } ;


 scalar_t__ VRTC_BROKEN_TIME ;
 int divider_enabled (int ) ;
 scalar_t__ rtc_halted (struct vrtc*) ;

__attribute__((used)) static __inline bool
update_enabled(struct vrtc *vrtc)
{






 if (!divider_enabled(vrtc->rtcdev.reg_a))
  return (0);

 if (rtc_halted(vrtc))
  return (0);

 if (vrtc->base_rtctime == VRTC_BROKEN_TIME)
  return (0);

 return (1);
}
