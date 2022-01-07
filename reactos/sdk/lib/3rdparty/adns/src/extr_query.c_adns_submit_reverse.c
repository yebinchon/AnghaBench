
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int adns_state ;
typedef scalar_t__ adns_rrtype ;
typedef int adns_queryflags ;
typedef int adns_query ;


 int EINVAL ;
 scalar_t__ adns_r_ptr ;
 scalar_t__ adns_r_ptr_raw ;
 int adns_submit_reverse_any (int ,struct sockaddr const*,char*,scalar_t__,int ,void*,int *) ;

int adns_submit_reverse(adns_state ads,
   const struct sockaddr *addr,
   adns_rrtype type,
   adns_queryflags flags,
   void *context,
   adns_query *query_r) {
  if (type != adns_r_ptr && type != adns_r_ptr_raw) return EINVAL;
  return adns_submit_reverse_any(ads,addr,"in-addr.arpa",type,flags,context,query_r);
}
