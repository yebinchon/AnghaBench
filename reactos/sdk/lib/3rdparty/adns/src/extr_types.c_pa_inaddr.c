
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_3__ {scalar_t__ dgram; } ;
typedef TYPE_1__ parseinfo ;
typedef int adns_status ;


 int adns_s_invaliddata ;
 int adns_s_ok ;
 int memcpy (struct in_addr*,scalar_t__,int) ;

__attribute__((used)) static adns_status pa_inaddr(const parseinfo *pai, int cbyte, int max, void *datap) {
  struct in_addr *storeto= datap;

  if (max-cbyte != 4) return adns_s_invaliddata;
  memcpy(storeto, pai->dgram + cbyte, 4);
  return adns_s_ok;
}
