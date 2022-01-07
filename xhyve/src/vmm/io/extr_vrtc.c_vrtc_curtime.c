
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vrtc {int base_rtctime; int base_uptime; } ;
typedef int sbintime_t ;


 int KASSERT (int,char*) ;
 int SBT_1S ;
 int sbinuptime () ;
 scalar_t__ update_enabled (struct vrtc*) ;

__attribute__((used)) static time_t
vrtc_curtime(struct vrtc *vrtc, sbintime_t *basetime)
{
 sbintime_t now, delta;
 time_t t, secs;

 t = vrtc->base_rtctime;
 *basetime = vrtc->base_uptime;
 if (update_enabled(vrtc)) {
  now = sbinuptime();
  delta = now - vrtc->base_uptime;
  KASSERT(delta >= 0, ("vrtc_curtime: uptime went backwards: "
      "%#llx to %#llx", vrtc->base_uptime, now));
  secs = delta / SBT_1S;
  t += secs;
  *basetime += secs * SBT_1S;
 }
 return (t);
}
