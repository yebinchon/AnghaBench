
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int cache_entry_free (struct cache_entry*) ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int memmove (struct cache_entry**,struct cache_entry**,int) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char*,int) ;

int
remove_from_index_with_prefix (struct index_state *istate, const char *path_prefix,
                               gboolean *not_found)
{
    int pathlen = strlen(path_prefix);
    int pos = index_name_pos (istate, path_prefix, pathlen);
    struct cache_entry *ce;

    if (not_found)
        *not_found = FALSE;


    if (pos >= 0) {
        remove_index_entry_at (istate, pos);
        return 0;
    }







    pos = -pos-1;




    char *full_path_prefix = g_strconcat (path_prefix, "/", ((void*)0));
    ++pathlen;

    while (pos < istate->cache_nr) {
        ce = istate->cache[pos];
        if (strncmp (ce->name, full_path_prefix, pathlen) < 0) {
            ++pos;
        } else
            break;
    }

    if (pos == istate->cache_nr) {
        g_free (full_path_prefix);
        if (not_found)
            *not_found = TRUE;
        return 0;
    }

    int i = pos;
    while (i < istate->cache_nr) {
        ce = istate->cache[i];
        if (strncmp (ce->name, full_path_prefix, pathlen) == 0) {
            remove_name_hash(istate, ce);
            cache_entry_free (ce);
            ++i;
        } else
            break;
    }
    g_free (full_path_prefix);


    if (i == pos) {
        if (not_found)
            *not_found = TRUE;
        return 0;
    }

    if (i < istate->cache_nr)
        memmove (istate->cache + pos,
                 istate->cache + i,
                 (istate->cache_nr - i) * sizeof(struct cache_entry *));
    istate->cache_nr -= (i - pos);
    istate->cache_changed = 1;

    return 0;
}
