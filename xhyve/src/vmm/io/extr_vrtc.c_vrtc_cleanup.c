
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrtc {int callout; } ;


 int callout_drain (int *) ;
 int free (struct vrtc*) ;
 int mach_clock ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

void
vrtc_cleanup(struct vrtc *vrtc)
{
 callout_drain(&vrtc->callout);
 mach_port_deallocate(mach_task_self(), mach_clock);
 free(vrtc);
}
