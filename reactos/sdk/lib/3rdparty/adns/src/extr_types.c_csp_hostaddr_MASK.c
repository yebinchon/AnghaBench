#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
typedef  scalar_t__ adns_status ;
struct TYPE_3__ {int astatus; int naddrs; int /*<<< orphan*/ * addrs; int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ adns_rr_hostaddr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 scalar_t__ adns_s_ok ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static adns_status FUNC9(vbuf *vb, const adns_rr_hostaddr *rrp) {
  const char *errstr;
  adns_status st;
  char buf[20];
  int i;

  st= FUNC5(vb,rrp->host);  if (st) return st;

  FUNC0(" ");
  FUNC0(FUNC2(rrp->astatus));

  FUNC7(buf," %d ",rrp->astatus);
  FUNC0(buf);

  FUNC0(FUNC1(rrp->astatus));
  FUNC0(" ");

  errstr= FUNC3(rrp->astatus);
  st= FUNC6(vb,errstr,(int)FUNC8(errstr));  if (st) return st;

  if (rrp->naddrs >= 0) {
    FUNC0(" (");
    for (i=0; i<rrp->naddrs; i++) {
      FUNC0(" ");
      st= FUNC4(vb,&rrp->addrs[i]);
    }
    FUNC0(" )");
  } else {
    FUNC0(" ?");
  }
  return adns_s_ok;
}