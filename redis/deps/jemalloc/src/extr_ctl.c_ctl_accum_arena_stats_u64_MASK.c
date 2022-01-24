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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ arena_stats_u64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(arena_stats_u64_t *dst, arena_stats_u64_t *src) {
#ifdef JEMALLOC_ATOMIC_U64
	uint64_t cur_dst = atomic_load_u64(dst, ATOMIC_RELAXED);
	uint64_t cur_src = atomic_load_u64(src, ATOMIC_RELAXED);
	atomic_store_u64(dst, cur_dst + cur_src, ATOMIC_RELAXED);
#else
	*dst += *src;
#endif
}