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
 int FUNC0 (unsigned int) ; 
 int MALLOCX_TCACHE_NONE ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 void* FUNC2 (size_t,int) ; 

__attribute__((used)) static void
FUNC3(unsigned arena_ind, size_t size) {
	int flags = FUNC0(arena_ind) | MALLOCX_TCACHE_NONE;
	void *p = FUNC2(size, flags);
	FUNC1(p, flags);
}