
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int adns_state ;


 int adns__consistency (int ,int ,int ) ;
 int adns__must_gettimeofday (int ,struct timeval const**,struct timeval*) ;
 int adns__timeouts (int ,int,int ,int ,struct timeval const) ;
 int cc_entex ;

void adns_processtimeouts(adns_state ads, const struct timeval *now) {
  struct timeval tv_buf;

  adns__consistency(ads,0,cc_entex);
  adns__must_gettimeofday(ads,&now,&tv_buf);
  if (now) adns__timeouts(ads, 1, 0,0, *now);
  adns__consistency(ads,0,cc_entex);
}
