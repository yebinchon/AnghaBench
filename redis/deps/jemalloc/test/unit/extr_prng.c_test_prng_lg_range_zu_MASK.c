#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  atomic_zu_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int LG_SIZEOF_PTR ; 
 unsigned int SIZE_T_MAX ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static void
FUNC5(bool atomic) {
	atomic_zu_t sa, sb;
	size_t ra, rb;
	unsigned lg_range;

	FUNC3(&sa, 42, ATOMIC_RELAXED);
	ra = FUNC4(&sa, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	FUNC3(&sa, 42, ATOMIC_RELAXED);
	rb = FUNC4(&sa, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	FUNC1(ra, rb,
	    "Repeated generation should produce repeated results");

	FUNC3(&sb, 42, ATOMIC_RELAXED);
	rb = FUNC4(&sb, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	FUNC1(ra, rb,
	    "Equivalent generation should produce equivalent results");

	FUNC3(&sa, 42, ATOMIC_RELAXED);
	ra = FUNC4(&sa, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	rb = FUNC4(&sa, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	FUNC2(ra, rb,
	    "Full-width results must not immediately repeat");

	FUNC3(&sa, 42, ATOMIC_RELAXED);
	ra = FUNC4(&sa, FUNC0(1) << (3 + LG_SIZEOF_PTR), atomic);
	for (lg_range = (FUNC0(1) << (3 + LG_SIZEOF_PTR)) - 1; lg_range > 0;
	    lg_range--) {
		FUNC3(&sb, 42, ATOMIC_RELAXED);
		rb = FUNC4(&sb, lg_range, atomic);
		FUNC1((rb & (SIZE_T_MAX << lg_range)),
		    0, "High order bits should be 0, lg_range=%u", lg_range);
		FUNC1(rb, (ra >> ((FUNC0(1) << (3 + LG_SIZEOF_PTR)) -
		    lg_range)), "Expected high order bits of full-width "
		    "result, lg_range=%u", lg_range);
	}
}