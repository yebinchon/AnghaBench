
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int adns_state ;
typedef int adns_query ;
typedef int adns_answer ;


 int adns__autosys (int ,struct timeval) ;
 int adns__consistency (int ,int ,int ) ;
 int adns__internal_check (int ,int *,int **,void**) ;
 int cc_entex ;
 int gettimeofday (struct timeval*,int ) ;

int adns_check(adns_state ads,
        adns_query *query_io,
        adns_answer **answer_r,
        void **context_r) {
  struct timeval now;
  int r;

  adns__consistency(ads,*query_io,cc_entex);
  r= gettimeofday(&now,0);
  if (!r) adns__autosys(ads,now);

  r= adns__internal_check(ads,query_io,answer_r,context_r);
  adns__consistency(ads,0,cc_entex);
  return r;
}
