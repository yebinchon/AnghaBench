
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vhpet {int countbase; int countbase_sbt; int freq_sbt; } ;
typedef int sbintime_t ;


 int KASSERT (int,char*) ;
 int sbinuptime () ;
 scalar_t__ vhpet_counter_enabled (struct vhpet*) ;

__attribute__((used)) static uint32_t
vhpet_counter(struct vhpet *vhpet, sbintime_t *nowptr)
{
 uint32_t val;
 sbintime_t now, delta;

 val = vhpet->countbase;
 if (vhpet_counter_enabled(vhpet)) {
  now = sbinuptime();
  delta = now - vhpet->countbase_sbt;
  KASSERT(delta >= 0, ("vhpet_counter: uptime went backwards: "
      "%#llx to %#llx", vhpet->countbase_sbt, now));
  val += delta / vhpet->freq_sbt;
  if (nowptr != ((void*)0))
   *nowptr = now;
 } else {





  KASSERT(nowptr == ((void*)0), ("vhpet_counter: nowptr must be NULL"));
 }
 return (val);
}
