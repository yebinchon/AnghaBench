
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
typedef int adns_status ;
typedef TYPE_1__* adns_query ;
struct TYPE_4__ {int cname_begin; int cname_dglen; int cname_dgram; int query_dglen; int query_dgram; } ;


 int DNS_HDRSIZE ;
 int adns__findrr_anychk (TYPE_1__*,int,int const*,int,int*,int*,int*,unsigned long*,int*,int*,int ,int ,int ,int*) ;

adns_status adns__findrr(adns_query qu, int serv,
    const byte *dgram, int dglen, int *cbyte_io,
    int *type_r, int *class_r, unsigned long *ttl_r,
    int *rdlen_r, int *rdstart_r,
    int *ownermatchedquery_r) {
  if (!ownermatchedquery_r) {
    return adns__findrr_anychk(qu,serv,
          dgram,dglen,cbyte_io,
          type_r,class_r,ttl_r,rdlen_r,rdstart_r,
          0,0,0, 0);
  } else if (!qu->cname_dgram) {
    return adns__findrr_anychk(qu,serv,
          dgram,dglen,cbyte_io,
          type_r,class_r,ttl_r,rdlen_r,rdstart_r,
          qu->query_dgram,qu->query_dglen,DNS_HDRSIZE,
          ownermatchedquery_r);
  } else {
    return adns__findrr_anychk(qu,serv,
          dgram,dglen,cbyte_io,
          type_r,class_r,ttl_r,rdlen_r,rdstart_r,
          qu->cname_dgram,qu->cname_dglen,qu->cname_begin,
          ownermatchedquery_r);
  }
}
