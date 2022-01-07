
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_3__ {int tree_root; int repo_id; } ;
typedef TYPE_1__ ChangeSet ;


 char* commit_tree_recursive (int ,int ,int *) ;

char *
commit_tree_from_changeset (ChangeSet *changeset)
{
    gint64 mtime;
    char *root_id = commit_tree_recursive (changeset->repo_id,
                                           changeset->tree_root,
                                           &mtime);

    return root_id;
}
