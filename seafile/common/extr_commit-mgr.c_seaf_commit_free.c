
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* random_key; struct TYPE_4__* magic; struct TYPE_4__* client_version; struct TYPE_4__* device_name; struct TYPE_4__* repo_desc; struct TYPE_4__* repo_name; struct TYPE_4__* second_parent_id; struct TYPE_4__* parent_id; struct TYPE_4__* creator_name; struct TYPE_4__* desc; } ;
typedef TYPE_1__ SeafCommit ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
seaf_commit_free (SeafCommit *commit)
{
    g_free (commit->desc);
    g_free (commit->creator_name);
    if (commit->parent_id) g_free (commit->parent_id);
    if (commit->second_parent_id) g_free (commit->second_parent_id);
    if (commit->repo_name) g_free (commit->repo_name);
    if (commit->repo_desc) g_free (commit->repo_desc);
    if (commit->device_name) g_free (commit->device_name);
    g_free (commit->client_version);
    g_free (commit->magic);
    g_free (commit->random_key);
    g_free (commit);
}
