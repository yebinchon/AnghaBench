
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
typedef int gboolean ;
typedef int LockedFileSet ;
typedef int GList ;
typedef int ChangeSet ;



__attribute__((used)) static void
scan_subtree_for_deletion (const char *repo_id,
                           struct index_state *istate,
                           const char *worktree,
                           const char *path,
                           GList *ignore_list,
                           LockedFileSet *fset,
                           gboolean is_readonly,
                           GList **scanned_dirs,
                           ChangeSet *changeset)
{
}
