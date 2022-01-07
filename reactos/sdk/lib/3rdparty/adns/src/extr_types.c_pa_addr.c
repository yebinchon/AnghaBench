
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * dgram; } ;
typedef TYPE_2__ parseinfo ;
typedef int byte ;
typedef int adns_status ;
struct TYPE_6__ {int sin_addr; int sin_family; } ;
struct TYPE_9__ {TYPE_1__ inet; } ;
struct TYPE_8__ {int len; TYPE_5__ addr; } ;
typedef TYPE_3__ adns_rr_addr ;


 int AF_INET ;
 int adns_s_invaliddata ;
 int adns_s_ok ;
 int memcpy (int *,int const*,int) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static adns_status pa_addr(const parseinfo *pai, int cbyte, int max, void *datap) {
  adns_rr_addr *storeto= datap;
  const byte *dgram= pai->dgram;

  if (max-cbyte != 4) return adns_s_invaliddata;
  storeto->len= sizeof(storeto->addr.inet);
  memset(&storeto->addr,0,sizeof(storeto->addr.inet));
  storeto->addr.inet.sin_family= AF_INET;
  memcpy(&storeto->addr.inet.sin_addr,dgram+cbyte,4);
  return adns_s_ok;
}
