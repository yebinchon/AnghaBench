
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;
typedef int (* CECallback ) (struct cache_entry*,void*) ;


 int cache_entry_free (struct cache_entry*) ;
 struct cache_entry** calloc (int,int) ;
 struct cache_entry* create_renamed_cache_entry (struct cache_entry*,char const*,char const*) ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int memmove (struct cache_entry**,struct cache_entry**,int) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static struct cache_entry **
create_renamed_cache_entries (struct index_state *istate,
                              const char *src_path, const char *dst_path,
                              int *n_entries,
                              CECallback cb_after_rename,
                              void *user_data)
{
    struct cache_entry *ce, **ret = ((void*)0);

    int src_pathlen = strlen(src_path);
    int pos = index_name_pos (istate, src_path, src_pathlen);


    if (pos >= 0) {
        ce = istate->cache[pos];
        ret = calloc (1, sizeof(struct cache_entry *));
        *ret = create_renamed_cache_entry (ce, src_path, dst_path);
        *n_entries = 1;

        remove_index_entry_at (istate, pos);

        return ret;
    }







    pos = -pos-1;




    char *full_src_path = g_strconcat (src_path, "/", ((void*)0));
    ++src_pathlen;

    while (pos < istate->cache_nr) {
        ce = istate->cache[pos];
        if (strncmp (ce->name, full_src_path, src_pathlen) < 0) {
            ++pos;
        } else
            break;
    }

    if (pos == istate->cache_nr) {
        g_free (full_src_path);
        *n_entries = 0;
        return ((void*)0);
    }

    int i = pos;
    while (i < istate->cache_nr) {
        ce = istate->cache[i];
        if (strncmp (ce->name, full_src_path, src_pathlen) == 0) {
            ++i;
        } else
            break;
    }
    g_free (full_src_path);

    if (i == pos) {
        *n_entries = 0;
        return ((void*)0);
    }

    *n_entries = (i - pos);
    ret = calloc (*n_entries, sizeof(struct cache_entry *));

    for (i = pos; i < pos + *n_entries; ++i) {
        ce = istate->cache[i];

        ret[i - pos] = create_renamed_cache_entry (ce, src_path, dst_path);

        if (cb_after_rename)
            cb_after_rename (ret[i-pos], user_data);

        remove_name_hash(istate, ce);
        cache_entry_free (ce);
    }

    if (i < istate->cache_nr)
        memmove (istate->cache + pos,
                 istate->cache + i,
                 (istate->cache_nr - i) * sizeof(struct cache_entry *));
    istate->cache_nr -= (i - pos);
    istate->cache_changed = 1;

    return ret;
}
