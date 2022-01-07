
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int * cache; } ;
struct cache_entry {int ce_flags; int name; } ;


 int ADD_CACHE_NEW_ONLY ;
 int ADD_CACHE_OK_TO_ADD ;
 scalar_t__ ce_same_name (int ,struct cache_entry*) ;
 scalar_t__ ce_stage (struct cache_entry*) ;
 int index_name_pos (struct index_state*,int ,int ) ;
 int remove_empty_parent_dir_entry (struct index_state*,int ) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int replace_index_entry (struct index_state*,int,struct cache_entry*) ;

__attribute__((used)) static int add_index_entry_with_check(struct index_state *istate, struct cache_entry *ce, int option)
{
    int pos;
    int ok_to_add = option & ADD_CACHE_OK_TO_ADD;


    int new_only = option & ADD_CACHE_NEW_ONLY;

    remove_empty_parent_dir_entry (istate, ce->name);

    pos = index_name_pos(istate, ce->name, ce->ce_flags);


    if (pos >= 0) {
        if (!new_only)
            replace_index_entry(istate, pos, ce);
        return 0;
    }
    pos = -pos-1;





    if (pos < istate->cache_nr && ce_stage(ce) == 0) {
        while (ce_same_name(istate->cache[pos], ce)) {
            ok_to_add = 1;
            if (!remove_index_entry_at(istate, pos))
                break;
        }
    }

    if (!ok_to_add)
        return -1;
    return pos + 1;
}
