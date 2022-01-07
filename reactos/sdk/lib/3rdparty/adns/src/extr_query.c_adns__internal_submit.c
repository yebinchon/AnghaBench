
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vbuf ;
typedef int typeinfo ;
struct timeval {int dummy; } ;
typedef int qcontext ;
typedef int adns_status ;
typedef int adns_state ;
typedef int adns_queryflags ;
typedef TYPE_1__* adns_query ;
struct TYPE_5__ {int ctx; } ;


 int adns__vbuf_free (int *) ;
 int adns_s_nomemory ;
 int adns_s_ok ;
 int memcpy (int *,int const*,size_t) ;
 TYPE_1__* query_alloc (int ,int const*,int ,struct timeval) ;
 int query_submit (int ,TYPE_1__*,int const*,int *,int,int ,struct timeval) ;

adns_status adns__internal_submit(adns_state ads, adns_query *query_r,
      const typeinfo *typei, vbuf *qumsg_vb, int id,
      adns_queryflags flags, struct timeval now,
      const qcontext *ctx) {
  adns_query qu;

  qu= query_alloc(ads,typei,flags,now);
  if (!qu) { adns__vbuf_free(qumsg_vb); return adns_s_nomemory; }
  *query_r= qu;

  memcpy(&qu->ctx,ctx,(size_t) sizeof(qu->ctx));
  query_submit(ads,qu, typei,qumsg_vb,id,flags,now);

  return adns_s_ok;
}
