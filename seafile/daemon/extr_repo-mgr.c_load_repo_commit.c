
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int commit_id; } ;
struct TYPE_13__ {int is_corrupted; int id; } ;
struct TYPE_12__ {TYPE_1__* seaf; } ;
struct TYPE_11__ {int commit_mgr; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;
typedef int SeafCommit ;
typedef TYPE_4__ SeafBranch ;


 int TRUE ;
 int * seaf_commit_manager_get_commit_compatible (int ,int ,int ) ;
 int seaf_commit_unref (int *) ;
 int seaf_repo_from_commit (TYPE_3__*,int *) ;
 int seaf_warning (char*,int ) ;
 int set_head_common (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void
load_repo_commit (SeafRepoManager *manager,
                  SeafRepo *repo,
                  SeafBranch *branch)
{
    SeafCommit *commit;

    commit = seaf_commit_manager_get_commit_compatible (manager->seaf->commit_mgr,
                                                        repo->id,
                                                        branch->commit_id);
    if (!commit) {
        seaf_warning ("Commit %s is missing\n", branch->commit_id);
        repo->is_corrupted = TRUE;
        return;
    }

    set_head_common (repo, branch);
    seaf_repo_from_commit (repo, commit);

    seaf_commit_unref (commit);
}
