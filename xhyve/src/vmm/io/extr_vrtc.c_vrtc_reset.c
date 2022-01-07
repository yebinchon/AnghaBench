
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtcdev {int reg_b; } ;
struct vrtc {int callout; struct rtcdev rtcdev; } ;


 int KASSERT (int,char*) ;
 int RTCSB_ALL_INTRS ;
 int RTCSB_SQWE ;
 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 int callout_active (int *) ;
 int vrtc_set_reg_b (struct vrtc*,int) ;
 int vrtc_set_reg_c (struct vrtc*,int ) ;

void
vrtc_reset(struct vrtc *vrtc)
{
 struct rtcdev *rtc;

 VRTC_LOCK(vrtc);

 rtc = &vrtc->rtcdev;
 vrtc_set_reg_b(vrtc, rtc->reg_b & ~(RTCSB_ALL_INTRS | RTCSB_SQWE));
 vrtc_set_reg_c(vrtc, 0);
 KASSERT(!callout_active(&vrtc->callout), ("rtc callout still active"));

 VRTC_UNLOCK(vrtc);
}
