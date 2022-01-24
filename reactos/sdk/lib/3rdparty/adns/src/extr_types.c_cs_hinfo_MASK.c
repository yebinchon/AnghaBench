#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vbuf ;
typedef  scalar_t__ adns_status ;
struct TYPE_4__ {TYPE_1__* array; } ;
typedef  TYPE_2__ adns_rr_intstrpair ;
struct TYPE_3__ {int /*<<< orphan*/  i; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ adns_s_ok ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static adns_status FUNC2(vbuf *vb, const void *datap) {
  const adns_rr_intstrpair *rrp= datap;
  adns_status st;

  st= FUNC1(vb,rrp->array[0].str,rrp->array[0].i);  if (st) return st;
  FUNC0(" ");
  st= FUNC1(vb,rrp->array[1].str,rrp->array[1].i);  if (st) return st;
  return adns_s_ok;
}