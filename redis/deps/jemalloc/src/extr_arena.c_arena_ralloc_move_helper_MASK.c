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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t LARGE_MAXCLASS ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void *
FUNC5(tsdn_t *tsdn, arena_t *arena, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache) {
	if (alignment == 0) {
		return FUNC0(tsdn, arena, usize, FUNC3(usize),
		    zero, tcache, true);
	}
	usize = FUNC2(usize, alignment);
	if (FUNC4(usize == 0 || usize > LARGE_MAXCLASS)) {
		return NULL;
	}
	return FUNC1(tsdn, usize, alignment, zero, tcache, arena);
}