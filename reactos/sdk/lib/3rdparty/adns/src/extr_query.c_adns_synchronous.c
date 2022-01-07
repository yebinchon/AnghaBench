
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;
typedef int adns_rrtype ;
typedef int adns_queryflags ;
typedef int adns_query ;
typedef int adns_answer ;


 int adns_cancel (int ) ;
 int adns_submit (int ,char const*,int ,int ,int ,int *) ;
 int adns_wait (int ,int *,int **,int ) ;

int adns_synchronous(adns_state ads,
       const char *owner,
       adns_rrtype type,
       adns_queryflags flags,
       adns_answer **answer_r) {
  adns_query qu;
  int r;

  r= adns_submit(ads,owner,type,flags,0,&qu);
  if (r) return r;

  r= adns_wait(ads,&qu,answer_r,0);
  if (r) adns_cancel(qu);

  return r;
}
