
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {int id; int name; int head; } ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int TRUE ;
 scalar_t__ seaf_repo_check_worktree (TYPE_1__*) ;
 int seaf_warning (char*,int ,int ) ;

__attribute__((used)) static gboolean
check_worktree_common (SeafRepo *repo)
{
    if (!repo->head) {
        seaf_warning ("Head for repo '%s'(%.8s) is not set.\n",
                      repo->name, repo->id);
        return FALSE;
    }

    if (seaf_repo_check_worktree (repo) < 0) {
        return FALSE;
    }

    return TRUE;
}
