
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int * cache; } ;


 scalar_t__ ce_stage (int ) ;

int unmerged_index(const struct index_state *istate)
{
    int i;
    for (i = 0; i < istate->cache_nr; i++) {
        if (ce_stage(istate->cache[i]))
            return 1;
    }
    return 0;
}
