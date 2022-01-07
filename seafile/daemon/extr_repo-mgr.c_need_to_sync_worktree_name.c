
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int repo_mgr; } ;


 int REPO_SYNC_WORKTREE_NAME ;
 int g_free (char*) ;
 scalar_t__ g_strcmp0 (char*,char*) ;
 TYPE_1__* seaf ;
 char* seaf_repo_manager_get_repo_property (int ,char const*,int ) ;

__attribute__((used)) static gboolean
need_to_sync_worktree_name (const char *repo_id)
{
    char *need_sync_wt_name = seaf_repo_manager_get_repo_property (seaf->repo_mgr,
                                                                   repo_id,
                                                                   REPO_SYNC_WORKTREE_NAME);
    gboolean ret = (g_strcmp0(need_sync_wt_name, "true") == 0);
    g_free (need_sync_wt_name);
    return ret;
}
