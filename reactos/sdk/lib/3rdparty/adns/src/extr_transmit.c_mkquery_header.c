
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ used; } ;
typedef TYPE_1__ vbuf ;
typedef int byte ;
typedef int adns_status ;
typedef TYPE_2__* adns_state ;
struct TYPE_9__ {int nextid; } ;


 scalar_t__ DNS_HDRSIZE ;
 int MKQUERY_ADDB (int) ;
 int MKQUERY_ADDW (int) ;
 int MKQUERY_START (TYPE_1__*) ;
 int MKQUERY_STOP (TYPE_1__*) ;
 int adns__vbuf_ensure (TYPE_1__*,scalar_t__) ;
 int adns_s_nomemory ;
 int adns_s_ok ;

__attribute__((used)) static adns_status mkquery_header(adns_state ads, vbuf *vb, int *id_r, int qdlen) {
  int id;
  byte *rqp;

  if (!adns__vbuf_ensure(vb,DNS_HDRSIZE+qdlen+4)) return adns_s_nomemory;

  vb->used= 0;
  MKQUERY_START(vb);

  *id_r= id= (ads->nextid++) & 0x0ffff;
  MKQUERY_ADDW(id);
  MKQUERY_ADDB(0x01);
  MKQUERY_ADDB(0x00);
  MKQUERY_ADDW(1);
  MKQUERY_ADDW(0);
  MKQUERY_ADDW(0);
  MKQUERY_ADDW(0);

  MKQUERY_STOP(vb);

  return adns_s_ok;
}
