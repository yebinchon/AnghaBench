
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int cache_alloc; int cache_changed; scalar_t__ cache; } ;
struct cache_entry {int dummy; } ;
typedef int ce ;


 int ADD_CACHE_JUST_APPEND ;
 int add_index_entry_with_check (struct index_state*,struct cache_entry*,int) ;
 int alloc_nr (int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ realloc (scalar_t__,int) ;
 int set_index_entry (struct index_state*,int,struct cache_entry*) ;

int add_index_entry(struct index_state *istate, struct cache_entry *ce, int option)
{
    int pos;

    if (option & ADD_CACHE_JUST_APPEND)
        pos = istate->cache_nr;
    else {
        int ret;
        ret = add_index_entry_with_check(istate, ce, option);
        if (ret <= 0)
            return ret;
        pos = ret - 1;
    }


    if (istate->cache_nr == istate->cache_alloc) {
        istate->cache_alloc = alloc_nr(istate->cache_alloc);
        istate->cache = realloc(istate->cache,
                                istate->cache_alloc * sizeof(struct cache_entry *));
    }


    istate->cache_nr++;
    if (istate->cache_nr > pos + 1)
        memmove(istate->cache + pos + 1,
                istate->cache + pos,
                (istate->cache_nr - pos - 1) * sizeof(ce));
    set_index_entry(istate, pos, ce);
    istate->cache_changed = 1;
    return 0;
}
