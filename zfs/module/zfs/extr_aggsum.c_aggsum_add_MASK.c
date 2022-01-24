#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aggsum_bucket {int asc_delta; int /*<<< orphan*/  asc_lock; scalar_t__ asc_borrowed; } ;
typedef  int int64_t ;
struct TYPE_4__ {size_t as_numbuckets; struct aggsum_bucket* as_buckets; } ;
typedef  TYPE_1__ aggsum_t ;

/* Variables and functions */
 size_t CPU_SEQID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,struct aggsum_bucket*) ; 
 int aggsum_borrow_multiplier ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(aggsum_t *as, int64_t delta)
{
	struct aggsum_bucket *asb;

	FUNC1();
	asb = &as->as_buckets[CPU_SEQID % as->as_numbuckets];
	FUNC2();

	for (;;) {
		FUNC3(&asb->asc_lock);
		if (asb->asc_delta + delta <= (int64_t)asb->asc_borrowed &&
		    asb->asc_delta + delta >= -(int64_t)asb->asc_borrowed) {
			asb->asc_delta += delta;
			FUNC4(&asb->asc_lock);
			return;
		}
		FUNC4(&asb->asc_lock);
		FUNC0(as, delta * aggsum_borrow_multiplier, asb);
	}
}