
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_alloc; int cache_nr; int cache_changed; scalar_t__ cache; } ;
struct cache_entry {int dummy; } ;
typedef int gboolean ;
typedef int CECallback ;


 int FALSE ;
 int TRUE ;
 int add_name_hash (struct index_state*,struct cache_entry*) ;
 int cache_entry_free (struct cache_entry*) ;
 struct cache_entry** create_renamed_cache_entries (struct index_state*,char const*,char const*,int*,int ,void*) ;
 int free (struct cache_entry**) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int memcpy (scalar_t__,struct cache_entry**,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int remove_empty_parent_dir_entry (struct index_state*,char const*) ;
 int remove_from_index_with_prefix (struct index_state*,char const*,int *) ;
 int seaf_warning (char*,...) ;
 int strlen (char const*) ;

int
rename_index_entries (struct index_state *istate,
                      const char *src_path,
                      const char *dst_path,
                      gboolean *not_found,
                      CECallback cb_after_rename,
                      void *cb_data)
{
    struct cache_entry **new_ces;
    int n_entries;
    int ret = 0;
    int i;

    if (not_found)
        *not_found = FALSE;

    new_ces = create_renamed_cache_entries (istate, src_path, dst_path, &n_entries,
                                            cb_after_rename, cb_data);
    if (n_entries == 0) {
        if (not_found)
            *not_found = TRUE;
        return 0;
    }




    remove_from_index_with_prefix (istate, dst_path, ((void*)0));

    remove_empty_parent_dir_entry (istate, dst_path);


    int dst_pathlen = strlen(dst_path);
    int pos = index_name_pos (istate, dst_path, dst_pathlen);
    if (pos >= 0) {
        seaf_warning ("BUG: %s should not exist in index after remove.\n", dst_path);
        ret = -1;
        goto out;
    }

    pos = -pos-1;





    if (istate->cache_alloc - istate->cache_nr < n_entries) {
        seaf_warning ("BUG: not enough room to insert renamed entries.\n"
                   "cache_alloc: %u, cache_nr: %u, n_entries: %d.\n",
                   istate->cache_alloc, istate->cache_nr, n_entries);
        ret = -1;
        goto out;
    }

    if (pos < istate->cache_nr)
        memmove (istate->cache + pos + n_entries,
                 istate->cache + pos,
                 (istate->cache_nr - pos) * sizeof(struct cache_entry *));

    memcpy (istate->cache + pos, new_ces, n_entries * sizeof(struct cache_entry *));
    for (i = 0; i < n_entries; ++i)
        add_name_hash (istate, new_ces[i]);
    istate->cache_nr += n_entries;
    istate->cache_changed = 1;

out:
    if (ret < 0) {
        for (i = 0; i < n_entries; ++i)
            cache_entry_free (new_ces[i]);
    }
    free (new_ces);

    return ret;
}
