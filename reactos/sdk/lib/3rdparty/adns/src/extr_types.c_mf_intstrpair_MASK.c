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
struct TYPE_4__ {TYPE_1__* array; } ;
typedef  TYPE_2__ adns_rr_intstrpair ;
typedef  int /*<<< orphan*/  adns_query ;
struct TYPE_3__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(adns_query qu, void *datap) {
  adns_rr_intstrpair *rrp= datap;

  FUNC0(qu,&rrp->array[0].str);
  FUNC0(qu,&rrp->array[1].str);
}