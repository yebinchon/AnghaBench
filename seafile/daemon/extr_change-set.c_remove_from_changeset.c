
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int ChangeSet ;


 int remove_from_changeset_recursive (int *,char const*,int ,char const*) ;

void
remove_from_changeset (ChangeSet *changeset,
                       char status,
                       const char *path,
                       gboolean remove_parent,
                       const char *top_dir)
{
    remove_from_changeset_recursive (changeset, path, remove_parent, top_dir);
}
