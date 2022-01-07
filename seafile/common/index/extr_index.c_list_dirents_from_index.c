
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {char* name; int ce_mode; } ;
typedef int gboolean ;
typedef int IndexDirent ;
typedef int GList ;


 int S_ISDIR (int ) ;
 int TRUE ;
 int compare_index_dents ;
 int g_free (char*) ;
 int * g_list_prepend (int *,int *) ;
 int * g_list_sort (int *,int ) ;
 char* g_strconcat (char const*,char*,int *) ;
 char* g_strdup (char const*) ;
 char* g_strndup (char*,int) ;
 int * index_dirent_new (char*,int ,struct cache_entry*) ;
 int index_name_pos (struct index_state*,char const*,int) ;
 scalar_t__ is_duplicate_dirent (int *,char*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

GList *
list_dirents_from_index (struct index_state *istate, const char *dir)
{
    char *full_dir;
    int pathlen;
    int pos;
    struct cache_entry *ce;
    GList *dirents = ((void*)0);
    char *path, *slash, *dname;
    gboolean is_dir;
    IndexDirent *dirent;

    if (dir[0] == 0) {
        pos = 0;
        full_dir = g_strdup(dir);
        pathlen = 0;
        goto collect_dents;
    } else {
        pathlen = strlen(dir);
        pos = index_name_pos (istate, dir, pathlen);
    }


    if (pos >= 0) {
        return ((void*)0);
    }







    pos = -pos-1;




    full_dir = g_strconcat (dir, "/", ((void*)0));
    ++pathlen;

    while (pos < istate->cache_nr) {
        ce = istate->cache[pos];
        if (strncmp (ce->name, full_dir, pathlen) < 0) {
            ++pos;
        } else
            break;
    }


    if (pos == istate->cache_nr) {
        g_free (full_dir);
        return ((void*)0);
    }

collect_dents:
    for (; pos < istate->cache_nr; ++pos) {
        ce = istate->cache[pos];

        if (strncmp (full_dir, ce->name, pathlen) != 0)
            break;

        path = ce->name + pathlen;
        slash = strchr(path, '/');
        if (slash) {
            dname = g_strndup(path, slash - path);
            if (is_duplicate_dirent (dirents, dname)) {
                g_free (dname);
                continue;
            }

            dirent = index_dirent_new (dname, TRUE, ((void*)0));
            dirents = g_list_prepend (dirents, dirent);
        } else {
            dname = g_strdup(path);
            is_dir = S_ISDIR(ce->ce_mode);
            dirent = index_dirent_new (dname, is_dir, ce);
            dirents = g_list_prepend (dirents, dirent);
        }
    }

    dirents = g_list_sort (dirents, compare_index_dents);

    g_free (full_dir);
    return dirents;
}
