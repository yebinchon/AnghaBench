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

/* Variables and functions */
 void* FUNC0 (void*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  MADV_NOHUGEPAGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (void*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(void *addr, size_t size, bool aligned) {
	if (aligned) {
		FUNC2(FUNC0(addr) == addr);
		FUNC2(FUNC1(size) == size);
	}

#ifdef JEMALLOC_HAVE_MADVISE_HUGE
	return (madvise(addr, size, MADV_NOHUGEPAGE) != 0);
#else
	return false;
#endif
}