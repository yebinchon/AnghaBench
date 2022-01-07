
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int opt ;
typedef int gboolean ;
typedef int data ;
struct TYPE_15__ {int commit_mgr; int repo_mgr; } ;
struct TYPE_14__ {struct TYPE_14__* data; int dir_cb; int file_cb; int version; int store_id; int fold_dir_diff; int ** results; } ;
struct TYPE_13__ {char* root_id; int * second_parent_id; int * parent_id; int repo_id; } ;
struct TYPE_12__ {int version; int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;
typedef int GList ;
typedef TYPE_3__ DiffOptions ;
typedef TYPE_3__ DiffData ;


 int diff_resolve_renames (int **) ;
 int diff_trees (int,char const**,TYPE_3__*) ;
 int g_return_val_if_fail (int,int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_8__* seaf ;
 TYPE_2__* seaf_commit_manager_get_commit (int ,int ,int ,int *) ;
 int seaf_commit_unref (TYPE_2__*) ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,int ) ;
 int seaf_warning (char*,int ,...) ;
 int threeway_diff_dirs ;
 int threeway_diff_files ;

int
diff_merge (SeafCommit *merge, GList **results, gboolean fold_dir_diff)
{
    SeafRepo *repo = ((void*)0);
    DiffOptions opt;
    const char *roots[3];
    SeafCommit *parent1, *parent2;

    g_return_val_if_fail (*results == ((void*)0), -1);
    g_return_val_if_fail (merge->parent_id != ((void*)0) &&
                          merge->second_parent_id != ((void*)0),
                          -1);

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, merge->repo_id);
    if (!repo) {
        seaf_warning ("Failed to get repo %s.\n", merge->repo_id);
        return -1;
    }

    parent1 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                              repo->id,
                                              repo->version,
                                              merge->parent_id);
    if (!parent1) {
        seaf_warning ("failed to find commit %s:%s.\n", repo->id, merge->parent_id);
        return -1;
    }

    parent2 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                              repo->id,
                                              repo->version,
                                              merge->second_parent_id);
    if (!parent2) {
        seaf_warning ("failed to find commit %s:%s.\n",
                      repo->id, merge->second_parent_id);
        seaf_commit_unref (parent1);
        return -1;
    }

    DiffData data;
    memset (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    memset (&opt, 0, sizeof(opt));
    memcpy (opt.store_id, repo->id, 36);
    opt.version = repo->version;
    opt.file_cb = threeway_diff_files;
    opt.dir_cb = threeway_diff_dirs;
    opt.data = &data;

    roots[0] = merge->root_id;
    roots[1] = parent1->root_id;
    roots[2] = parent2->root_id;

    int ret = diff_trees (3, roots, &opt);
    diff_resolve_renames (results);

    seaf_commit_unref (parent1);
    seaf_commit_unref (parent2);

    return ret;
}
