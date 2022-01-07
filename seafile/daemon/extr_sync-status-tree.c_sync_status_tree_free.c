
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SyncStatusTree {struct SyncStatusTree* worktree; int root; } ;


 int g_free (struct SyncStatusTree*) ;
 int sync_status_dir_free (int ) ;

void
sync_status_tree_free (struct SyncStatusTree *tree)
{
    if (!tree)
        return;





    sync_status_dir_free (tree->root);

    g_free (tree->worktree);
    g_free (tree);
}
