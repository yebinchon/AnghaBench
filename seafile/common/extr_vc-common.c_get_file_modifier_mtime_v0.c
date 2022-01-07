
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_7__ {int fs_mgr; int commit_mgr; } ;
struct TYPE_6__ {int ctime; int creator_name; int root_id; int parent_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef int GError ;


 int diff_parents_with_path (TYPE_1__*,char const*,char const*,int,char const*,char*,char*,int **) ;
 int g_clear_error (int **) ;
 int g_free (char*) ;
 char* g_strdup (int ) ;
 int memcpy (char*,char const*,int) ;
 TYPE_4__* seaf ;
 TYPE_1__* seaf_commit_manager_get_commit (int ,char const*,int,char*) ;
 int seaf_commit_unref (TYPE_1__*) ;
 char* seaf_fs_manager_path_to_obj_id (int ,char const*,int,int ,char const*,int *,int **) ;

__attribute__((used)) static int
get_file_modifier_mtime_v0 (const char *repo_id, const char *store_id, int version,
                            const char *head, const char *path,
                            char **modifier, gint64 *mtime)
{
    char commit_id[41];
    SeafCommit *commit = ((void*)0);
    char *file_id = ((void*)0);
    int changed;
    int ret = 0;
    GError *error = ((void*)0);

    *modifier = ((void*)0);
    *mtime = 0;

    memcpy (commit_id, head, 41);

    while (1) {
        commit = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                                 repo_id, version,
                                                 commit_id);
        if (!commit) {
            ret = -1;
            break;
        }


        if (!commit->parent_id)
            break;

        file_id = seaf_fs_manager_path_to_obj_id (seaf->fs_mgr,
                                                  store_id, version,
                                                  commit->root_id,
                                                  path,
                                                  ((void*)0),
                                                  &error);
        if (error) {
            g_clear_error (&error);
            ret = -1;
            break;
        }

        if (!file_id) {
            ret = -1;
            break;
        }

        changed = diff_parents_with_path (commit,
                                          repo_id, store_id, version,
                                          path, file_id,
                                          commit_id, &error);
        if (error) {
            g_clear_error (&error);
            ret = -1;
            break;
        }

        if (changed) {
            *modifier = g_strdup (commit->creator_name);
            *mtime = commit->ctime;
            break;
        } else {



            g_free (file_id);
            seaf_commit_unref (commit);
        }
    }

    g_free (file_id);
    if (commit)
        seaf_commit_unref (commit);
    return ret;
}
