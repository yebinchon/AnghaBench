
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* token; struct TYPE_4__* email; struct TYPE_4__* relay_id; struct TYPE_4__* worktree; struct TYPE_4__* category; struct TYPE_4__* desc; struct TYPE_4__* name; scalar_t__ head; } ;
typedef TYPE_1__ SeafRepo ;


 int g_free (TYPE_1__*) ;
 int seaf_branch_unref (scalar_t__) ;

void
seaf_repo_free (SeafRepo *repo)
{
    if (repo->head) seaf_branch_unref (repo->head);

    g_free (repo->name);
    g_free (repo->desc);
    g_free (repo->category);
    g_free (repo->worktree);
    g_free (repo->relay_id);
    g_free (repo->email);
    g_free (repo->token);
    g_free (repo);
}
