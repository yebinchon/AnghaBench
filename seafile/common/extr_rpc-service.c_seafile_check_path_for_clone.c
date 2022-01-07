
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clone_mgr; } ;
typedef int GError ;


 TYPE_1__* seaf ;
 int seaf_clone_manager_check_worktree_path (int ,char const*,int **) ;

int
seafile_check_path_for_clone (const char *path, GError **error)
{
    if (!seaf_clone_manager_check_worktree_path(seaf->clone_mgr, path, error)) {
        return -1;
    }

    return 0;
}
