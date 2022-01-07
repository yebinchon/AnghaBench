
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* qu; int dglen; int dgram; int serv; } ;
typedef TYPE_1__ parseinfo ;
typedef int parsedomain_flags ;
typedef scalar_t__ adns_status ;
struct TYPE_8__ {size_t used; int buf; } ;
struct TYPE_7__ {TYPE_4__ vb; int ads; } ;


 int R_NOMEM ;
 char* adns__alloc_interim (TYPE_3__*,size_t) ;
 scalar_t__ adns__parse_domain (int ,int ,TYPE_3__*,TYPE_4__*,int ,int ,int ,int*,int) ;
 scalar_t__ adns_s_invaliddata ;
 scalar_t__ adns_s_ok ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static adns_status pap_domain(const parseinfo *pai, int *cbyte_io, int max,
         char **domain_r, parsedomain_flags flags) {
  adns_status st;
  char *dm;

  st= adns__parse_domain(pai->qu->ads, pai->serv, pai->qu, &pai->qu->vb, flags,
    pai->dgram,pai->dglen, cbyte_io, max);
  if (st) return st;
  if (!pai->qu->vb.used) return adns_s_invaliddata;

  dm= adns__alloc_interim(pai->qu, (size_t) pai->qu->vb.used+1);
  if (!dm) R_NOMEM;

  dm[pai->qu->vb.used]= 0;
  memcpy(dm,pai->qu->vb.buf, (size_t) pai->qu->vb.used);

  *domain_r= dm;
  return adns_s_ok;
}
