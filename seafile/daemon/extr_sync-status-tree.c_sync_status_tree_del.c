
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guint ;
struct TYPE_3__ {int worktree; int * root; } ;
typedef TYPE_1__ SyncStatusTree ;
typedef int SyncStatusDir ;


 int delete_recursive (int *,char**,int ,int ,int ) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int ) ;
 int g_strv_length (char**) ;

void
sync_status_tree_del (SyncStatusTree *tree,
                      const char *path)
{
    char **dnames = ((void*)0);
    guint n;
    SyncStatusDir *dir = tree->root;

    dnames = g_strsplit (path, "/", 0);
    if (!dnames)
        return;
    n = g_strv_length (dnames);

    delete_recursive (dir, dnames, n, 0, tree->worktree);

    g_strfreev (dnames);
}
