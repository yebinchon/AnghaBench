
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc_version; int version; int no_local_history; void* salt; void* random_key; void* magic; scalar_t__ encrypted; void* repo_desc; void* repo_name; } ;
struct TYPE_5__ {int enc_version; int version; int no_local_history; int salt; int random_key; int magic; scalar_t__ encrypted; int desc; int name; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;


 void* g_strdup (int ) ;

void
seaf_repo_to_commit (SeafRepo *repo, SeafCommit *commit)
{
    commit->repo_name = g_strdup (repo->name);
    commit->repo_desc = g_strdup (repo->desc);
    commit->encrypted = repo->encrypted;
    if (commit->encrypted) {
        commit->enc_version = repo->enc_version;
        if (commit->enc_version == 1)
            commit->magic = g_strdup (repo->magic);
        else if (commit->enc_version == 2) {
            commit->magic = g_strdup (repo->magic);
            commit->random_key = g_strdup (repo->random_key);
        }
        else if (commit->enc_version == 3) {
            commit->magic = g_strdup (repo->magic);
            commit->random_key = g_strdup (repo->random_key);
            commit->salt = g_strdup (repo->salt);
        }
    }
    commit->no_local_history = repo->no_local_history;
    commit->version = repo->version;
}
