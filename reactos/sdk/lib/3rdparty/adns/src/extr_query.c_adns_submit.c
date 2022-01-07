
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int typeinfo ;
struct timeval {int dummy; } ;
typedef int byte ;
typedef int adns_status ;
typedef TYPE_2__* adns_state ;
typedef int adns_rrtype ;
typedef int adns_queryflags ;
typedef TYPE_3__* adns_query ;
struct TYPE_17__ {int info; scalar_t__ callback; void* ext; } ;
struct TYPE_19__ {int flags; int search_doneabs; int search_origlen; int search_vb; TYPE_1__ ctx; } ;
struct TYPE_18__ {int searchndots; } ;


 int DNS_MAXDOMAIN ;
 int ENOSYS ;
 int adns__autosys (TYPE_2__*,struct timeval) ;
 int adns__consistency (TYPE_2__*,TYPE_3__*,int ) ;
 int * adns__findtype (int ) ;
 int adns__query_fail (TYPE_3__*,int ) ;
 int adns__search_next (TYPE_2__*,TYPE_3__*,struct timeval) ;
 int adns__vbuf_append (int *,int *,int) ;
 int adns_qf_owner ;
 int adns_qf_search ;
 int adns_s_nomemory ;
 int adns_s_querydomaininvalid ;
 int adns_s_querydomaintoolong ;
 int assert (int) ;
 int cc_entex ;
 int errno ;
 int gettimeofday (struct timeval*,int ) ;
 int memset (int *,int ,int) ;
 TYPE_3__* query_alloc (TYPE_2__*,int const*,int,struct timeval) ;
 int query_simple (TYPE_2__*,TYPE_3__*,char const*,int,int const*,int,struct timeval) ;
 int save_owner (TYPE_3__*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int adns_submit(adns_state ads,
  const char *owner,
  adns_rrtype type,
  adns_queryflags flags,
  void *context,
  adns_query *query_r) {
  int r, ol, ndots;
  adns_status stat;
  const typeinfo *typei;
  struct timeval now;
  adns_query qu;
  const char *p;

  adns__consistency(ads,0,cc_entex);

  typei= adns__findtype(type);
  if (!typei) return ENOSYS;

  r= gettimeofday(&now,0); if (r) goto x_errno;
  qu= query_alloc(ads,typei,flags,now); if (!qu) goto x_errno;

  qu->ctx.ext= context;
  qu->ctx.callback= 0;
  memset(&qu->ctx.info,0,sizeof(qu->ctx.info));

  *query_r= qu;

  ol= strlen(owner);
  if (!ol) { stat= adns_s_querydomaininvalid; goto x_adnsfail; }
  if (ol>DNS_MAXDOMAIN+1) { stat= adns_s_querydomaintoolong; goto x_adnsfail; }

  if (ol>=1 && owner[ol-1]=='.' && (ol<2 || owner[ol-2]!='\\')) {
    flags &= ~adns_qf_search;
    qu->flags= flags;
    ol--;
  }

  if (flags & adns_qf_search) {
    r= adns__vbuf_append(&qu->search_vb,(byte*)owner,ol);
    if (!r) { stat= adns_s_nomemory; goto x_adnsfail; }

    for (ndots=0, p=owner; (p= strchr(p,'.')); p++, ndots++);
    qu->search_doneabs= (ndots >= ads->searchndots) ? -1 : 0;
    qu->search_origlen= ol;
    adns__search_next(ads,qu,now);
  } else {
    if (flags & adns_qf_owner) {
      if (!save_owner(qu,owner,ol)) { stat= adns_s_nomemory; goto x_adnsfail; }
    }
    query_simple(ads,qu, owner,ol, typei,flags, now);
  }
  adns__autosys(ads,now);
  adns__consistency(ads,qu,cc_entex);
  return 0;

 x_adnsfail:
  adns__query_fail(qu,stat);
  adns__consistency(ads,qu,cc_entex);
  return 0;

 x_errno:
  r= errno;
  assert(r);
  adns__consistency(ads,0,cc_entex);
  return r;
}
