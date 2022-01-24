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
typedef  int /*<<< orphan*/  malloc_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 unsigned int PROF_NCTX_LOCKS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cum_gctxs ; 
 int /*<<< orphan*/ * gctx_locks ; 

__attribute__((used)) static malloc_mutex_t *
FUNC1(void) {
	unsigned ngctxs = FUNC0(&cum_gctxs, 1, ATOMIC_RELAXED);

	return &gctx_locks[(ngctxs - 1) % PROF_NCTX_LOCKS];
}