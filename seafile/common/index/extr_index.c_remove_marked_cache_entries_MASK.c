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
struct index_state {unsigned int cache_nr; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;
typedef  scalar_t__ gboolean ;

/* Variables and functions */
 int CE_REMOVE ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,struct cache_entry*) ; 

void FUNC2(struct index_state *istate)
{
    struct cache_entry **ce_array = istate->cache;
    unsigned int i, j;
    gboolean removed = FALSE;

    for (i = j = 0; i < istate->cache_nr; i++) {
        if (ce_array[i]->ce_flags & CE_REMOVE) {
            FUNC1(istate, ce_array[i]);
            FUNC0 (ce_array[i]);
            removed = TRUE;
        } else {
            ce_array[j++] = ce_array[i];
        }
    }
    if (removed) {
        istate->cache_changed = 1;
        istate->cache_nr = j;
    }
}