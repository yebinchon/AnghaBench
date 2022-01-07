
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_8__ {int is_corrupted; int id; TYPE_2__* manager; } ;
struct TYPE_7__ {TYPE_1__* seaf; } ;
struct TYPE_6__ {int branch_mgr; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;
typedef int SeafBranch ;


 int FALSE ;
 int TRUE ;
 int load_repo_commit (TYPE_2__*,TYPE_3__*,int *) ;
 int * seaf_branch_manager_get_branch (int ,int ,char*) ;
 int seaf_branch_unref (int *) ;
 int seaf_warning (char*,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;

__attribute__((used)) static gboolean
load_branch_cb (sqlite3_stmt *stmt, void *vrepo)
{
    SeafRepo *repo = vrepo;
    SeafRepoManager *manager = repo->manager;

    char *branch_name = (char *) sqlite3_column_text (stmt, 0);
    SeafBranch *branch =
        seaf_branch_manager_get_branch (manager->seaf->branch_mgr,
                                        repo->id, branch_name);
    if (branch == ((void*)0)) {
        seaf_warning ("Broken branch name for repo %s\n", repo->id);
        repo->is_corrupted = TRUE;
        return FALSE;
    }
    load_repo_commit (manager, repo, branch);
    seaf_branch_unref (branch);


    return FALSE;
}
