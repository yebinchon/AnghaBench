
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int name; } ;


 int cache_name_compare (char const*,int,int ,int ) ;

int index_name_pos(const struct index_state *istate, const char *name, int namelen)
{
    int first, last;

    first = 0;
    last = istate->cache_nr;
    while (last > first) {
        int next = (last + first) >> 1;
        struct cache_entry *ce = istate->cache[next];
        int cmp = cache_name_compare(name, namelen, ce->name, ce->ce_flags);
        if (!cmp)
            return next;
        if (cmp < 0) {
            last = next;
            continue;
        }
        first = next+1;
    }
    return -first-1;
}
