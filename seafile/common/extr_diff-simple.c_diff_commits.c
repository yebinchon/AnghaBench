
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int opt ;
typedef int gboolean ;
typedef int data ;
struct TYPE_14__ {int repo_mgr; } ;
struct TYPE_13__ {struct TYPE_13__* data; int dir_cb; int file_cb; int version; int store_id; int fold_dir_diff; int ** results; } ;
struct TYPE_12__ {char* root_id; int repo_id; } ;
struct TYPE_11__ {int version; int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;
typedef int GList ;
typedef TYPE_3__ DiffOptions ;
typedef TYPE_3__ DiffData ;


 int diff_resolve_renames (int **) ;
 int diff_trees (int,char const**,TYPE_3__*) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_6__* seaf ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,int ) ;
 int seaf_warning (char*,int ) ;
 int twoway_diff_dirs ;
 int twoway_diff_files ;

int
diff_commits (SeafCommit *commit1, SeafCommit *commit2, GList **results,
              gboolean fold_dir_diff)
{
    SeafRepo *repo = ((void*)0);
    DiffOptions opt;
    const char *roots[2];

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, commit1->repo_id);
    if (!repo) {
        seaf_warning ("Failed to get repo %s.\n", commit1->repo_id);
        return -1;
    }

    DiffData data;
    memset (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    memset (&opt, 0, sizeof(opt));
    memcpy (opt.store_id, repo->id, 36);
    opt.version = repo->version;
    opt.file_cb = twoway_diff_files;
    opt.dir_cb = twoway_diff_dirs;
    opt.data = &data;

    roots[0] = commit1->root_id;
    roots[1] = commit2->root_id;

    diff_trees (2, roots, &opt);
    diff_resolve_renames (results);

    return 0;
}
