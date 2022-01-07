
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int gboolean ;
struct TYPE_7__ {int repo_mgr; } ;
struct TYPE_6__ {scalar_t__ version; int worktree; int id; int enc_iv; int enc_key; int enc_version; scalar_t__ encrypted; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GList ;


 scalar_t__ apply_worktree_changes_to_index (TYPE_1__*,struct index_state*,int *,int *,int *) ;
 int g_free (int *) ;
 int locked_file_set_free (int *) ;
 scalar_t__ scan_worktree_for_changes (struct index_state*,TYPE_1__*,int *,int *,int *) ;
 TYPE_2__* seaf ;
 int seaf_repo_free_ignore_files (int *) ;
 int * seaf_repo_load_ignore_files (int ) ;
 int * seaf_repo_manager_get_locked_file_set (int ,int ) ;
 int seaf_warning (char*) ;
 int * seafile_crypt_new (int ,int ,int ) ;

__attribute__((used)) static int
index_add (SeafRepo *repo, struct index_state *istate, gboolean is_force_commit)
{
    SeafileCrypt *crypt = ((void*)0);
    LockedFileSet *fset = ((void*)0);
    GList *ignore_list = ((void*)0);
    int ret = 0;

    if (repo->encrypted) {
        crypt = seafile_crypt_new (repo->enc_version, repo->enc_key, repo->enc_iv);
    }






    ignore_list = seaf_repo_load_ignore_files (repo->worktree);

    if (!is_force_commit) {
        if (apply_worktree_changes_to_index (repo, istate, crypt, ignore_list, fset) < 0) {
            seaf_warning ("Failed to apply worktree changes to index.\n");
            ret = -1;
        }
    } else if (scan_worktree_for_changes (istate, repo, crypt, ignore_list, fset) < 0) {
        seaf_warning ("Failed to scan worktree for changes.\n");
        ret = -1;
    }

    seaf_repo_free_ignore_files (ignore_list);





    g_free (crypt);

    return ret;
}
