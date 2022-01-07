
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* adns_state ;


 int di_addr (void* const,void const*,void const*) ;

__attribute__((used)) static int div_addr(void *context, const void *datap_a, const void *datap_b) {
  const adns_state ads= context;

  return di_addr(ads, datap_a, datap_b);
}
