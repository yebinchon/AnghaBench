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
struct index_state {scalar_t__ name_hash_initialized; } ;
struct cache_entry {int /*<<< orphan*/  ce_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_UNHASHED ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,struct cache_entry*) ; 

void FUNC1(struct index_state *istate, struct cache_entry *ce)
{
    ce->ce_flags &= ~CE_UNHASHED;
    if (istate->name_hash_initialized)
        FUNC0(istate, ce);
}