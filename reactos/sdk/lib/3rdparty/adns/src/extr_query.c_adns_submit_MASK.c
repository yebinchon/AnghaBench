#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  typeinfo ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  adns_status ;
typedef  TYPE_2__* adns_state ;
typedef  int /*<<< orphan*/  adns_rrtype ;
typedef  int adns_queryflags ;
typedef  TYPE_3__* adns_query ;
struct TYPE_17__ {int /*<<< orphan*/  info; scalar_t__ callback; void* ext; } ;
struct TYPE_19__ {int flags; int search_doneabs; int search_origlen; int /*<<< orphan*/  search_vb; TYPE_1__ ctx; } ;
struct TYPE_18__ {int searchndots; } ;

/* Variables and functions */
 int DNS_MAXDOMAIN ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,struct timeval) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int adns_qf_owner ; 
 int adns_qf_search ; 
 int /*<<< orphan*/  adns_s_nomemory ; 
 int /*<<< orphan*/  adns_s_querydomaininvalid ; 
 int /*<<< orphan*/  adns_s_querydomaintoolong ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  cc_entex ; 
 int errno ; 
 int FUNC7 (struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC9 (TYPE_2__*,int /*<<< orphan*/  const*,int,struct timeval) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*,char const*,int,int /*<<< orphan*/  const*,int,struct timeval) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char const*,int) ; 
 char* FUNC12 (char const*,char) ; 
 int FUNC13 (char const*) ; 

int FUNC14(adns_state ads,
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

  FUNC1(ads,0,cc_entex);

  typei= FUNC2(type);
  if (!typei) return ENOSYS;

  r= FUNC7(&now,0); if (r) goto x_errno;
  qu= FUNC9(ads,typei,flags,now); if (!qu) goto x_errno;

  qu->ctx.ext= context;
  qu->ctx.callback= 0;
  FUNC8(&qu->ctx.info,0,sizeof(qu->ctx.info));

  *query_r= qu;

  ol= FUNC13(owner);
  if (!ol) { stat= adns_s_querydomaininvalid; goto x_adnsfail; }
  if (ol>DNS_MAXDOMAIN+1) { stat= adns_s_querydomaintoolong; goto x_adnsfail; }

  if (ol>=1 && owner[ol-1]=='.' && (ol<2 || owner[ol-2]!='\\')) {
    flags &= ~adns_qf_search;
    qu->flags= flags;
    ol--;
  }

  if (flags & adns_qf_search) {
    r= FUNC5(&qu->search_vb,(byte*)owner,ol);
    if (!r) { stat= adns_s_nomemory; goto x_adnsfail; }

    for (ndots=0, p=owner; (p= FUNC12(p,'.')); p++, ndots++);
    qu->search_doneabs= (ndots >= ads->searchndots) ? -1 : 0;
    qu->search_origlen= ol;
    FUNC4(ads,qu,now);
  } else {
    if (flags & adns_qf_owner) {
      if (!FUNC11(qu,owner,ol)) { stat= adns_s_nomemory; goto x_adnsfail; }
    }
    FUNC10(ads,qu, owner,ol, typei,flags, now);
  }
  FUNC0(ads,now);
  FUNC1(ads,qu,cc_entex);
  return 0;

 x_adnsfail:
  FUNC3(qu,stat);
  FUNC1(ads,qu,cc_entex);
  return 0;

 x_errno:
  r= errno;
  FUNC6(r);
  FUNC1(ads,0,cc_entex);
  return r;
}