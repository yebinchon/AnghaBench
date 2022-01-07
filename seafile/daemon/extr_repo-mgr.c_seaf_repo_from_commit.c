
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc_version; int version; int no_local_history; int salt; int random_key; int magic; int root_id; int ctime; scalar_t__ encrypted; int repo_desc; int repo_name; } ;
struct TYPE_5__ {int enc_version; int version; int no_local_history; int salt; int random_key; int magic; scalar_t__ encrypted; int root_id; int last_modify; void* desc; void* name; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ SeafCommit ;


 void* g_strdup (int ) ;
 int memcpy (int ,int ,int) ;

void
seaf_repo_from_commit (SeafRepo *repo, SeafCommit *commit)
{
    repo->name = g_strdup (commit->repo_name);
    repo->desc = g_strdup (commit->repo_desc);
    repo->encrypted = commit->encrypted;
    repo->last_modify = commit->ctime;
    memcpy (repo->root_id, commit->root_id, 40);
    if (repo->encrypted) {
        repo->enc_version = commit->enc_version;
        if (repo->enc_version == 1)
            memcpy (repo->magic, commit->magic, 32);
        else if (repo->enc_version == 2) {
            memcpy (repo->magic, commit->magic, 64);
            memcpy (repo->random_key, commit->random_key, 96);
        }
        else if (repo->enc_version == 3) {
            memcpy (repo->magic, commit->magic, 64);
            memcpy (repo->random_key, commit->random_key, 96);
            memcpy (repo->salt, commit->salt, 64);
        }
    }
    repo->no_local_history = commit->no_local_history;
    repo->version = commit->version;
}
