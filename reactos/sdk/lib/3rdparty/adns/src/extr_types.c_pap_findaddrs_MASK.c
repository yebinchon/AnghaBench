#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ads; TYPE_7__* qu; int /*<<< orphan*/  now; int /*<<< orphan*/  dglen; int /*<<< orphan*/  dgram; int /*<<< orphan*/  serv; } ;
typedef  TYPE_1__ parseinfo ;
typedef  scalar_t__ adns_status ;
struct TYPE_11__ {int naddrs; int /*<<< orphan*/  addrs; scalar_t__ astatus; } ;
typedef  TYPE_2__ adns_rr_hostaddr ;
typedef  int /*<<< orphan*/  adns_rr_addr ;
struct TYPE_12__ {scalar_t__ buf; } ;
struct TYPE_13__ {TYPE_6__ vb; } ;

/* Variables and functions */
 int DNS_CLASS_IN ; 
 int /*<<< orphan*/  R_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int) ; 
 scalar_t__ FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*,unsigned long*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int adns_r_a ; 
 scalar_t__ adns_s_ok ; 
 int /*<<< orphan*/  div_addr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*,int,int,scalar_t__) ; 

__attribute__((used)) static adns_status FUNC7(const parseinfo *pai, adns_rr_hostaddr *ha,
				 int *cbyte_io, int count, int dmstart) {
  int rri, naddrs;
  int type, class, rdlen, rdstart, ownermatched;
  unsigned long ttl;
  adns_status st;

  for (rri=0, naddrs=-1; rri<count; rri++) {
    st= FUNC1(pai->qu, pai->serv, pai->dgram, pai->dglen, cbyte_io,
			    &type, &class, &ttl, &rdlen, &rdstart,
			    pai->dgram, pai->dglen, dmstart, &ownermatched);
    if (st) return st;
    if (!ownermatched || class != DNS_CLASS_IN || type != adns_r_a) {
      if (naddrs>0) break; else continue;
    }
    if (naddrs == -1) {
      naddrs= 0;
    }
    if (!FUNC4(&pai->qu->vb, (int) ((naddrs+1)*sizeof(adns_rr_addr)))) R_NOMEM;
    FUNC3(pai->qu,ttl,pai->now);
    st= FUNC6(pai, rdstart,rdstart+rdlen,
		pai->qu->vb.buf + naddrs*sizeof(adns_rr_addr));
    if (st) return st;
    naddrs++;
  }
  if (naddrs >= 0) {
    ha->addrs= FUNC0(pai->qu, naddrs*sizeof(adns_rr_addr));
    if (!ha->addrs) R_NOMEM;
    FUNC5(ha->addrs, pai->qu->vb.buf, naddrs*sizeof(adns_rr_addr));
    ha->naddrs= naddrs;
    ha->astatus= adns_s_ok;

    FUNC2(ha->addrs, naddrs, sizeof(adns_rr_addr), pai->qu->vb.buf,
		div_addr, pai->ads);
  }
  return adns_s_ok;
}