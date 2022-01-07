
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vbuf ;
typedef int typeinfo ;
struct timeval {int dummy; } ;
typedef scalar_t__ adns_status ;
typedef int adns_state ;
typedef int adns_queryflags ;
typedef TYPE_1__* adns_query ;
struct TYPE_6__ {int vb; } ;


 scalar_t__ adns__mkquery (int ,int *,int*,char const*,int,int const*,int) ;
 int adns__query_fail (TYPE_1__*,scalar_t__) ;
 int adns__search_next (int ,TYPE_1__*,struct timeval) ;
 int adns__vbuf_init (int *) ;
 int adns_qf_search ;
 scalar_t__ adns_s_querydomaintoolong ;
 int query_submit (int ,TYPE_1__*,int const*,int *,int,int,struct timeval) ;

__attribute__((used)) static void query_simple(adns_state ads, adns_query qu,
    const char *owner, int ol,
    const typeinfo *typei, adns_queryflags flags,
    struct timeval now) {
  vbuf vb_new;
  int id;
  adns_status stat;

  stat= adns__mkquery(ads,&qu->vb,&id, owner,ol, typei,flags);
  if (stat) {
    if (stat == adns_s_querydomaintoolong && (flags & adns_qf_search)) {
      adns__search_next(ads,qu,now);
      return;
    } else {
      adns__query_fail(qu,stat);
      return;
    }
  }

  vb_new= qu->vb;
  adns__vbuf_init(&qu->vb);
  query_submit(ads,qu, typei,&vb_new,id, flags,now);
}
