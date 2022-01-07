
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_16__ {int commit_mgr; int branch_mgr; } ;
struct TYPE_15__ {TYPE_2__* data; struct TYPE_15__* next; } ;
struct TYPE_14__ {int commit_id; } ;
struct TYPE_13__ {int version; int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef int SeafCommit ;
typedef TYPE_2__ SeafBranch ;
typedef TYPE_3__ GList ;


 int FALSE ;
 int collect_commit ;
 int g_list_free (TYPE_3__*) ;
 TYPE_3__* g_list_reverse (TYPE_3__*) ;
 TYPE_9__* seaf ;
 TYPE_3__* seaf_branch_manager_get_branch_list (int ,int ) ;
 int seaf_branch_unref (TYPE_2__*) ;
 int seaf_commit_manager_traverse_commit_tree (int ,int ,int ,int ,int ,TYPE_3__**,int ) ;
 int seaf_commit_unref (int *) ;
 int seaf_warning (char*,int ) ;

GList *
seaf_repo_get_commits (SeafRepo *repo)
{
    GList *branches;
    GList *ptr;
    SeafBranch *branch;
    GList *commits = ((void*)0);

    branches = seaf_branch_manager_get_branch_list (seaf->branch_mgr, repo->id);
    if (branches == ((void*)0)) {
        seaf_warning ("Failed to get branch list of repo %s.\n", repo->id);
        return ((void*)0);
    }

    for (ptr = branches; ptr != ((void*)0); ptr = ptr->next) {
        branch = ptr->data;
        gboolean res = seaf_commit_manager_traverse_commit_tree (seaf->commit_mgr,
                                                                 repo->id,
                                                                 repo->version,
                                                                 branch->commit_id,
                                                                 collect_commit,
                                                                 &commits, FALSE);
        if (!res) {
            for (ptr = commits; ptr != ((void*)0); ptr = ptr->next)
                seaf_commit_unref ((SeafCommit *)(ptr->data));
            g_list_free (commits);
            goto out;
        }
    }

    commits = g_list_reverse (commits);

out:
    for (ptr = branches; ptr != ((void*)0); ptr = ptr->next) {
        seaf_branch_unref ((SeafBranch *)ptr->data);
    }
    return commits;
}
