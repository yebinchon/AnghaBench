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
typedef  int /*<<< orphan*/  uint64_t ;
struct aggsum_bucket {int /*<<< orphan*/  asc_lock; int /*<<< orphan*/  asc_borrowed; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  as_lock; int /*<<< orphan*/  as_lower_bound; int /*<<< orphan*/  as_upper_bound; } ;
typedef  TYPE_1__ aggsum_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct aggsum_bucket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(aggsum_t *as, int64_t delta, struct aggsum_bucket *asb)
{
	int64_t abs_delta = (delta < 0 ? -delta : delta);
	FUNC2(&as->as_lock);
	FUNC2(&asb->asc_lock);

	FUNC0(as, asb);

	FUNC1((volatile uint64_t *)&as->as_upper_bound, abs_delta);
	FUNC1((volatile uint64_t *)&as->as_lower_bound, -abs_delta);
	asb->asc_borrowed = abs_delta;

	FUNC3(&asb->asc_lock);
	FUNC3(&as->as_lock);
}