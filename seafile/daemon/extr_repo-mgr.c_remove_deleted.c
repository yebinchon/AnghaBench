
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct TYPE_5__ {scalar_t__ sec; } ;
struct cache_entry {char* name; int ce_flags; TYPE_1__ ce_ctime; int ce_mode; } ;
typedef scalar_t__ gboolean ;
struct TYPE_7__ {int filelock_mgr; } ;
struct TYPE_6__ {int st_mode; } ;
typedef TYPE_2__ SeafStat ;
typedef int LockedFileSet ;
typedef int GList ;
typedef int ChangeSet ;


 int CE_REMOVE ;
 int DIFF_STATUS_DELETED ;
 int DIFF_STATUS_DIR_DELETED ;
 scalar_t__ ENOENT ;
 scalar_t__ FALSE ;
 int SEAF_PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ ce_stage (struct cache_entry*) ;
 scalar_t__ check_locked_file_before_remove (int *,char*) ;
 scalar_t__ errno ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 int is_empty_dir (char*,int *) ;
 int is_path_writable (char const*,scalar_t__,char*) ;
 int remove_from_changeset (int *,int ,char*,scalar_t__,char const*) ;
 int remove_marked_cache_entries (struct index_state*) ;
 TYPE_4__* seaf ;
 int seaf_debug (char*,char*) ;
 scalar_t__ seaf_filelock_manager_is_file_locked (int ,char const*,char*) ;
 int seaf_stat (char*,TYPE_2__*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
remove_deleted (struct index_state *istate, const char *worktree, const char *prefix,
                GList *ignore_list, LockedFileSet *fset,
                const char *repo_id, gboolean is_repo_ro,
                ChangeSet *changeset)
{
    struct cache_entry **ce_array = istate->cache;
    struct cache_entry *ce;
    char path[SEAF_PATH_MAX];
    unsigned int i;
    SeafStat st;
    int ret;
    gboolean not_exist;

    char *full_prefix = g_strconcat (prefix, "/", ((void*)0));
    int len = strlen(full_prefix);

    for (i = 0; i < istate->cache_nr; ++i) {
        ce = ce_array[i];

        if (!is_path_writable (repo_id, is_repo_ro, ce->name))
            continue;

        if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                  repo_id, ce->name)) {
            seaf_debug ("Remove deleted: %s is locked on server, ignore.\n", ce->name);
            continue;
        }

        if (prefix[0] != 0 && strcmp (ce->name, prefix) != 0 &&
            strncmp (ce->name, full_prefix, len) != 0)
            continue;

        snprintf (path, SEAF_PATH_MAX, "%s/%s", worktree, ce->name);
        not_exist = FALSE;
        ret = seaf_stat (path, &st);
        if (ret < 0 && errno == ENOENT)
            not_exist = TRUE;

        if (S_ISDIR (ce->ce_mode)) {
            if (ce->ce_ctime.sec != 0 || ce_stage(ce) != 0) {
                if (not_exist || (ret == 0 && !S_ISDIR (st.st_mode))) {

                    ce->ce_flags |= CE_REMOVE;
                    if (changeset)




                        remove_from_changeset (changeset,
                                               DIFF_STATUS_DIR_DELETED,
                                               ce->name,
                                               TRUE,
                                               prefix);
                } else if (!is_empty_dir (path, ignore_list)) {

                    ce->ce_flags |= CE_REMOVE;
                }
            }
        } else {




            if ((not_exist || (ret == 0 && !S_ISREG (st.st_mode))) &&
                (ce->ce_ctime.sec != 0 || ce_stage(ce) != 0) &&
                check_locked_file_before_remove (fset, ce->name))
            {
                ce_array[i]->ce_flags |= CE_REMOVE;
                if (changeset)
                    remove_from_changeset (changeset,
                                           DIFF_STATUS_DELETED,
                                           ce->name,
                                           TRUE,
                                           prefix);
            }
        }
    }

    remove_marked_cache_entries (istate);

    g_free (full_prefix);
}
