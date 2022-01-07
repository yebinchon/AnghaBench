
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; } ;
typedef TYPE_1__ vbuf ;
typedef int findlabel_state ;
typedef int byte ;
typedef int adns_status ;
typedef int adns_state ;
typedef int adns_queryflags ;
typedef int adns_query ;


 int adns__findlabel_start (int *,int ,int,int ,int const*,int,int,int,int*) ;
 int adns__parse_domain_more (int *,int ,int ,TYPE_1__*,int ,int const*) ;

adns_status adns__parse_domain(adns_state ads, int serv, adns_query qu,
          vbuf *vb, adns_queryflags flags,
          const byte *dgram, int dglen, int *cbyte_io, int max) {
  findlabel_state fls;

  adns__findlabel_start(&fls,ads, serv,qu, dgram,dglen,max, *cbyte_io,cbyte_io);
  vb->used= 0;
  return adns__parse_domain_more(&fls,ads,qu, vb,flags,dgram);
}
