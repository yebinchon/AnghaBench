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
struct TYPE_2__ {int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ adns_rr_strpair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ adns_s_ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static adns_status FUNC3(vbuf *vb, const void *datap) {
  const adns_rr_strpair *rrp= datap;
  adns_status st;

  st= FUNC2(vb,rrp->array[0]);  if (st) return st;
  FUNC0(" ");
  st= FUNC1(vb,rrp->array[1]);  if (st) return st;

  return adns_s_ok;
}