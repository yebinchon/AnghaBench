
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int dummy; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_4__ {int iflags; } ;


 int adns_if_noautosys ;
 int adns_processany (TYPE_1__*) ;

void adns__autosys(adns_state ads, struct timeval now) {
  if (ads->iflags & adns_if_noautosys) return;
  adns_processany(ads);
}
