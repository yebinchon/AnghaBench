
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int commit_mgr; int repo_mgr; } ;
struct TYPE_6__ {TYPE_1__* head; int version; } ;
struct TYPE_5__ {int commit_id; } ;
typedef TYPE_2__ SeafRepo ;
typedef int SeafCommit ;


 TYPE_4__* seaf ;
 int * seaf_commit_manager_get_commit (int ,char const*,int ,int ) ;
 TYPE_2__* seaf_repo_manager_get_repo (int ,char const*) ;
 int seaf_warning (char*,char const*) ;

SeafCommit *
seaf_repo_get_head_commit (const char *repo_id)
{
    SeafRepo *repo;
    SeafCommit *head;

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        seaf_warning ("Failed to get repo %s.\n", repo_id);
        return ((void*)0);
    }

    head = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                           repo_id, repo->version,
                                           repo->head->commit_id);
    if (!head) {
        seaf_warning ("Failed to get head for repo %s.\n", repo_id);
        return ((void*)0);
    }

    return head;
}
