
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int commit_mgr; } ;
struct TYPE_11__ {char const* parent_id; scalar_t__ second_parent_id; } ;
struct TYPE_10__ {int version; int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;
typedef int GList ;
typedef int GDestroyNotify ;


 int diff_commits (TYPE_2__*,TYPE_2__*,int **,int) ;
 scalar_t__ diff_entry_free ;
 int diff_merge (TYPE_2__*,int **,int) ;
 int g_list_free_full (int *,int ) ;
 char* g_strdup (char*) ;
 TYPE_6__* seaf ;
 TYPE_2__* seaf_commit_manager_get_commit (int ,int ,int ,char const*) ;
 int seaf_commit_unref (TYPE_2__*) ;

GList *
seaf_repo_diff (SeafRepo *repo, const char *old, const char *new, int fold_dir_diff, char **error)
{
    SeafCommit *c1 = ((void*)0), *c2 = ((void*)0);
    int ret = 0;
    GList *diff_entries = ((void*)0);

    c2 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                         repo->id, repo->version,
                                         new);
    if (!c2) {
        *error = g_strdup("Can't find new commit");
        return ((void*)0);
    }

    if (old == ((void*)0) || old[0] == '\0') {
        if (c2->parent_id && c2->second_parent_id) {
            ret = diff_merge (c2, &diff_entries, fold_dir_diff);
            seaf_commit_unref (c2);
            if (ret < 0) {
                *error = g_strdup("Failed to do diff");
                g_list_free_full (diff_entries, (GDestroyNotify)diff_entry_free);
                return ((void*)0);
            }
            return diff_entries;
        }

        if (!c2->parent_id) {
            seaf_commit_unref (c2);
            return ((void*)0);
        }
        c1 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                             repo->id, repo->version,
                                             c2->parent_id);
    } else {
        c1 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                             repo->id, repo->version, old);
    }

    if (!c1) {
        *error = g_strdup("Can't find old commit");
        seaf_commit_unref (c2);
        return ((void*)0);
    }


    ret = diff_commits (c1, c2, &diff_entries, fold_dir_diff);
    if (ret < 0) {
        g_list_free_full (diff_entries, (GDestroyNotify)diff_entry_free);
        diff_entries = ((void*)0);
        *error = g_strdup("Failed to do diff");
    }

    seaf_commit_unref (c1);
    seaf_commit_unref (c2);

    return diff_entries;
}
