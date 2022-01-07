
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafStat ;
typedef int ChangeSet ;


 int apply_to_tree (int *,char,unsigned char*,int *,char const*,char const*,char const*) ;

void
add_to_changeset (ChangeSet *changeset,
                  char status,
                  unsigned char *sha1,
                  SeafStat *st,
                  const char *modifier,
                  const char *path,
                  const char *new_path)
{
    apply_to_tree (changeset,
                   status, sha1, st, modifier, path, new_path);
}
