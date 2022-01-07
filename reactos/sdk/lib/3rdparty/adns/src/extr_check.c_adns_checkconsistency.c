
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;
typedef int adns_query ;


 int adns__consistency (int ,int ,int ) ;
 int cc_user ;

void adns_checkconsistency(adns_state ads, adns_query qu) {
  adns__consistency(ads,qu,cc_user);
}
