#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
typedef  scalar_t__ adns_status ;
struct TYPE_2__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  rname; int /*<<< orphan*/  mname; } ;
typedef  TYPE_1__ adns_rr_soa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ adns_s_ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static adns_status FUNC4(vbuf *vb, const void *datap) {
  const adns_rr_soa *rrp= datap;
  char buf[20];
  int i;
  adns_status st;

  st= FUNC1(vb,rrp->mname);  if (st) return st;
  FUNC0(" ");
  st= FUNC2(vb,rrp->rname);  if (st) return st;

  for (i=0; i<5; i++) {
    FUNC3(buf," %lu",(&rrp->serial)[i]);
    FUNC0(buf);
  }

  return adns_s_ok;
}