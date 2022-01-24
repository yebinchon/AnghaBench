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
typedef  int /*<<< orphan*/  uint64_t ;
struct aggsum_bucket {scalar_t__ asc_borrowed; scalar_t__ asc_delta; int /*<<< orphan*/  asc_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  as_lower_bound; int /*<<< orphan*/  as_upper_bound; int /*<<< orphan*/  as_lock; } ;
typedef  TYPE_1__ aggsum_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  volatile*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(aggsum_t *as, struct aggsum_bucket *asb)
{
	FUNC0(FUNC1(&as->as_lock));
	FUNC0(FUNC1(&asb->asc_lock));

	/*
	 * We use atomic instructions for this because we read the upper and
	 * lower bounds without the lock, so we need stores to be atomic.
	 */
	FUNC2((volatile uint64_t *)&as->as_lower_bound, asb->asc_delta);
	FUNC2((volatile uint64_t *)&as->as_upper_bound, asb->asc_delta);
	asb->asc_delta = 0;
	FUNC2((volatile uint64_t *)&as->as_upper_bound,
	    -asb->asc_borrowed);
	FUNC2((volatile uint64_t *)&as->as_lower_bound,
	    asb->asc_borrowed);
	asb->asc_borrowed = 0;
}