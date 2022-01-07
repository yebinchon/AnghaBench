
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; int cache_alloc; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;
typedef scalar_t__ gboolean ;
typedef int ce ;
typedef int SeafStat ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int alloc_nr (int) ;
 struct cache_entry* create_empty_dir_index_entry (char const*,int *) ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 int memmove (struct cache_entry**,struct cache_entry**,int) ;
 struct cache_entry** realloc (struct cache_entry**,int) ;
 int set_index_entry (struct index_state*,int,struct cache_entry*) ;
 int strlen (char const*) ;
 int strncmp (int ,char*,int) ;

int
add_empty_dir_to_index_with_check (struct index_state *istate,
                                   const char *path, SeafStat *st)
{
    int pathlen = strlen(path);
    int pos = index_name_pos (istate, path, pathlen);
    struct cache_entry *ce;


    if (pos >= 0) {
        return 0;
    }







    pos = -pos-1;




    char *full_path = g_strconcat (path, "/", ((void*)0));
    ++pathlen;

    gboolean is_empty = TRUE;

    while (pos < istate->cache_nr) {
        ce = istate->cache[pos];
        int rc = strncmp (ce->name, full_path, pathlen);
        if (rc < 0) {
            ++pos;
        } else if (rc == 0) {
            is_empty = FALSE;
            break;
        } else
            break;
    }

    g_free (full_path);

    if (is_empty) {
        ce = create_empty_dir_index_entry (path, st);


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
    }

    return 0;
}
