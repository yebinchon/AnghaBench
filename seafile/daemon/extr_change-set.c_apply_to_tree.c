
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int SeafStat ;
typedef int ChangeSetDirent ;
typedef int ChangeSet ;






 int add_to_tree (int *,unsigned char*,int *,char const*,char const*,int *) ;
 int changeset_dirent_free (int *) ;
 int * delete_from_tree (int *,char const*,int *) ;

__attribute__((used)) static void
apply_to_tree (ChangeSet *changeset,
               char status,
               unsigned char *sha1,
               SeafStat *st,
               const char *modifier,
               const char *path,
               const char *new_path)
{
    ChangeSetDirent *dent, *dent_dst;
    gboolean dummy;

    switch (status) {
    case 131:
    case 129:
    case 130:
        add_to_tree (changeset, sha1, st, modifier, path, ((void*)0));
        break;
    case 128:
        dent = delete_from_tree (changeset, path, &dummy);
        if (!dent)
            break;

        dent_dst = delete_from_tree (changeset, new_path, &dummy);
        changeset_dirent_free (dent_dst);
        add_to_tree (changeset, ((void*)0), ((void*)0), ((void*)0), new_path, dent);

        break;
    }
}
