
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dss_prec_t ;


 int ATOMIC_RELEASE ;
 int atomic_store_u (int *,unsigned int,int ) ;
 int dss_prec_default ;
 scalar_t__ dss_prec_disabled ;
 int have_dss ;

bool
extent_dss_prec_set(dss_prec_t dss_prec) {
 if (!have_dss) {
  return (dss_prec != dss_prec_disabled);
 }
 atomic_store_u(&dss_prec_default, (unsigned)dss_prec, ATOMIC_RELEASE);
 return 0;
}
