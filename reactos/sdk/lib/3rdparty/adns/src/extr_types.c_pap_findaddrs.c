
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ads; TYPE_7__* qu; int now; int dglen; int dgram; int serv; } ;
typedef TYPE_1__ parseinfo ;
typedef scalar_t__ adns_status ;
struct TYPE_11__ {int naddrs; int addrs; scalar_t__ astatus; } ;
typedef TYPE_2__ adns_rr_hostaddr ;
typedef int adns_rr_addr ;
struct TYPE_12__ {scalar_t__ buf; } ;
struct TYPE_13__ {TYPE_6__ vb; } ;


 int DNS_CLASS_IN ;
 int R_NOMEM ;
 int adns__alloc_interim (TYPE_7__*,int) ;
 scalar_t__ adns__findrr_anychk (TYPE_7__*,int ,int ,int ,int*,int*,int*,unsigned long*,int*,int*,int ,int ,int,int*) ;
 int adns__isort (int ,int,int,scalar_t__,int ,int ) ;
 int adns__update_expires (TYPE_7__*,unsigned long,int ) ;
 int adns__vbuf_ensure (TYPE_6__*,int) ;
 int adns_r_a ;
 scalar_t__ adns_s_ok ;
 int div_addr ;
 int memcpy (int ,scalar_t__,int) ;
 scalar_t__ pa_addr (TYPE_1__ const*,int,int,scalar_t__) ;

__attribute__((used)) static adns_status pap_findaddrs(const parseinfo *pai, adns_rr_hostaddr *ha,
     int *cbyte_io, int count, int dmstart) {
  int rri, naddrs;
  int type, class, rdlen, rdstart, ownermatched;
  unsigned long ttl;
  adns_status st;

  for (rri=0, naddrs=-1; rri<count; rri++) {
    st= adns__findrr_anychk(pai->qu, pai->serv, pai->dgram, pai->dglen, cbyte_io,
       &type, &class, &ttl, &rdlen, &rdstart,
       pai->dgram, pai->dglen, dmstart, &ownermatched);
    if (st) return st;
    if (!ownermatched || class != DNS_CLASS_IN || type != adns_r_a) {
      if (naddrs>0) break; else continue;
    }
    if (naddrs == -1) {
      naddrs= 0;
    }
    if (!adns__vbuf_ensure(&pai->qu->vb, (int) ((naddrs+1)*sizeof(adns_rr_addr)))) R_NOMEM;
    adns__update_expires(pai->qu,ttl,pai->now);
    st= pa_addr(pai, rdstart,rdstart+rdlen,
  pai->qu->vb.buf + naddrs*sizeof(adns_rr_addr));
    if (st) return st;
    naddrs++;
  }
  if (naddrs >= 0) {
    ha->addrs= adns__alloc_interim(pai->qu, naddrs*sizeof(adns_rr_addr));
    if (!ha->addrs) R_NOMEM;
    memcpy(ha->addrs, pai->qu->vb.buf, naddrs*sizeof(adns_rr_addr));
    ha->naddrs= naddrs;
    ha->astatus= adns_s_ok;

    adns__isort(ha->addrs, naddrs, sizeof(adns_rr_addr), pai->qu->vb.buf,
  div_addr, pai->ads);
  }
  return adns_s_ok;
}
