
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* worktree; int status; } ;
typedef TYPE_1__ RepoWatchInfo ;


 int g_free (TYPE_1__*) ;
 int wt_status_unref (int ) ;

__attribute__((used)) static void
free_repo_watch_info (RepoWatchInfo *info)
{
    wt_status_unref (info->status);
    g_free (info->worktree);
    g_free (info);
}
