#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ adns_status ;
typedef  TYPE_5__* adns_state ;
struct TYPE_20__ {int naddrs; int /*<<< orphan*/  addrs; scalar_t__ astatus; } ;
typedef  TYPE_6__ adns_rr_hostaddr ;
typedef  int /*<<< orphan*/  adns_rr_addr ;
typedef  TYPE_7__* adns_query ;
struct TYPE_17__ {int /*<<< orphan*/  addr; } ;
struct TYPE_22__ {scalar_t__ status; int nrrs; TYPE_3__ rrs; } ;
typedef  TYPE_8__ adns_answer ;
struct TYPE_18__ {scalar_t__ head; } ;
struct TYPE_15__ {TYPE_6__* hostaddr; } ;
struct TYPE_16__ {TYPE_1__ info; } ;
struct TYPE_21__ {TYPE_4__ children; TYPE_5__* ads; TYPE_2__ ctx; TYPE_8__* answer; } ;
struct TYPE_19__ {int /*<<< orphan*/  childw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ adns_s_max_tempfail ; 

__attribute__((used)) static void FUNC3(adns_query parent, adns_query child) {
  adns_answer *cans= child->answer;
  adns_rr_hostaddr *rrp= child->ctx.info.hostaddr;
  adns_state ads= parent->ads;
  adns_status st;

  st= cans->status;
  rrp->astatus= st;
  rrp->naddrs= (st>0 && st<=adns_s_max_tempfail) ? -1 : cans->nrrs;
  rrp->addrs= cans->rrs.addr;
  FUNC2(child, parent, rrp->addrs, rrp->naddrs*sizeof(adns_rr_addr));

  if (parent->children.head) {
    FUNC0(ads->childw,parent);
  } else {
    FUNC1(parent);
  }
}