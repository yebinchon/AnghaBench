
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int adns_state ;


 int adns__consistency (int ,int ,int ) ;
 int adns__timeouts (int ,int ,struct timeval**,struct timeval*,struct timeval) ;
 int cc_entex ;

void adns_firsttimeout(adns_state ads,
         struct timeval **tv_io, struct timeval *tvbuf,
         struct timeval now) {
  adns__consistency(ads,0,cc_entex);
  adns__timeouts(ads, 0, tv_io,tvbuf, now);
  adns__consistency(ads,0,cc_entex);
}
