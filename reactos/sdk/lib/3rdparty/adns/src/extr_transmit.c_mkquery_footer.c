
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ used; scalar_t__ avail; } ;
typedef TYPE_1__ vbuf ;
typedef int byte ;
typedef int adns_status ;
typedef int adns_rrtype ;


 int DNS_CLASS_IN ;
 int MKQUERY_ADDW (int) ;
 int MKQUERY_START (TYPE_1__*) ;
 int MKQUERY_STOP (TYPE_1__*) ;
 int adns__rrt_typemask ;
 int adns_s_ok ;
 int assert (int) ;

__attribute__((used)) static adns_status mkquery_footer(vbuf *vb, adns_rrtype type) {
  byte *rqp;

  MKQUERY_START(vb);
  MKQUERY_ADDW(type & adns__rrt_typemask);
  MKQUERY_ADDW(DNS_CLASS_IN);
  MKQUERY_STOP(vb);
  assert(vb->used <= vb->avail);

  return adns_s_ok;
}
