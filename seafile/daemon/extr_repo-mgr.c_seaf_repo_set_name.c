
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int id; } ;
typedef TYPE_1__ SeafRepo ;


 int TRUE ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 scalar_t__ need_to_sync_worktree_name (int ) ;
 int update_repo_worktree_name (TYPE_1__*,char const*,int ) ;

void
seaf_repo_set_name (SeafRepo *repo, const char *new_name)
{
    char *old_name = repo->name;
    repo->name = g_strdup(new_name);
    g_free (old_name);

    if (need_to_sync_worktree_name (repo->id))
        update_repo_worktree_name (repo, new_name, TRUE);
}
