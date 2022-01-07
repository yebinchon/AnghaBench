
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ used; int buf; } ;
typedef TYPE_1__ vbuf ;
typedef int typeinfo ;
struct timeval {int dummy; } ;
typedef int adns_state ;
typedef int adns_queryflags ;
typedef TYPE_2__* adns_query ;
struct TYPE_9__ {int id; TYPE_1__ vb; int query_dgram; scalar_t__ query_dglen; } ;


 int adns__query_fail (TYPE_2__*,int ) ;
 int adns__query_send (TYPE_2__*,struct timeval) ;
 int adns__vbuf_init (TYPE_1__*) ;
 int adns_s_nomemory ;
 int malloc (size_t) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static void query_submit(adns_state ads, adns_query qu,
    const typeinfo *typei, vbuf *qumsg_vb, int id,
    adns_queryflags flags, struct timeval now) {




  qu->vb= *qumsg_vb;
  adns__vbuf_init(qumsg_vb);

  qu->query_dgram= malloc( (size_t) qu->vb.used);
  if (!qu->query_dgram) { adns__query_fail(qu,adns_s_nomemory); return; }

  qu->id= id;
  qu->query_dglen= qu->vb.used;
  memcpy(qu->query_dgram,qu->vb.buf,(size_t) qu->vb.used);

  adns__query_send(qu,now);
}
