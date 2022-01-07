
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int commit_id; } ;
struct TYPE_14__ {int commit_id; void* client_version; void* device_name; void* parent_id; } ;
struct TYPE_13__ {char* email; TYPE_8__* head; int id; } ;
struct TYPE_12__ {int branch_mgr; int commit_mgr; int client_name; int client_id; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;


 int SEAFILE_CLIENT_VERSION ;
 void* g_strdup (int ) ;
 TYPE_10__* seaf ;
 int seaf_branch_manager_update_branch (int ,TYPE_8__*) ;
 int seaf_branch_set_commit (TYPE_8__*,int ) ;
 scalar_t__ seaf_commit_manager_add_commit (int ,TYPE_2__*) ;
 TYPE_2__* seaf_commit_new (int *,int ,char const*,char*,int ,char const*,int ) ;
 int seaf_commit_unref (TYPE_2__*) ;
 int seaf_repo_to_commit (TYPE_1__*,TYPE_2__*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int
commit_tree (SeafRepo *repo, const char *root_id,
             const char *desc, char commit_id[])
{
    SeafCommit *commit;

    commit = seaf_commit_new (((void*)0), repo->id, root_id,
                              repo->email ? repo->email
                              : "unknown",
                              seaf->client_id,
                              desc, 0);

    commit->parent_id = g_strdup (repo->head->commit_id);


    commit->device_name = g_strdup(seaf->client_name);
    commit->client_version = g_strdup (SEAFILE_CLIENT_VERSION);

    seaf_repo_to_commit (repo, commit);

    if (seaf_commit_manager_add_commit (seaf->commit_mgr, commit) < 0)
        return -1;

    seaf_branch_set_commit (repo->head, commit->commit_id);
    seaf_branch_manager_update_branch (seaf->branch_mgr, repo->head);

    strcpy (commit_id, commit->commit_id);
    seaf_commit_unref (commit);

    return 0;
}
