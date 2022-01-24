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
struct index_state {int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*,int,struct cache_entry*) ; 

__attribute__((used)) static void FUNC3(struct index_state *istate, int nr, struct cache_entry *ce)
{
    struct cache_entry *old = istate->cache[nr];

    FUNC1(istate, old);
    FUNC0 (old);
    FUNC2(istate, nr, ce);
    istate->cache_changed = 1;
}