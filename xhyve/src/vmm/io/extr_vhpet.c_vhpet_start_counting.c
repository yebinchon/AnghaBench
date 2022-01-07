
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhpet {int countbase_sbt; int countbase; } ;


 int VHPET_NUM_TIMERS ;
 int sbinuptime () ;
 int vhpet_start_timer (struct vhpet*,int,int ,int ) ;

__attribute__((used)) static void
vhpet_start_counting(struct vhpet *vhpet)
{
 int i;

 vhpet->countbase_sbt = sbinuptime();
 for (i = 0; i < VHPET_NUM_TIMERS; i++) {




  vhpet_start_timer(vhpet, i, vhpet->countbase,
      vhpet->countbase_sbt);
 }
}
