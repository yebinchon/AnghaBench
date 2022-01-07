
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_8__ {int dirents; } ;
struct TYPE_7__ {TYPE_2__* subdir; int mode; } ;
typedef TYPE_1__ SyncStatusDirent ;
typedef TYPE_2__ SyncStatusDir ;


 scalar_t__ S_ISDIR (int ) ;
 int g_free (char*) ;
 TYPE_1__* g_hash_table_lookup (int ,char*) ;
 char* g_strconcat (char const*,char*,char*,int *) ;
 scalar_t__ is_empty_dir (TYPE_1__*) ;
 int remove_item (TYPE_2__*,char*,char*) ;

__attribute__((used)) static void
delete_recursive (SyncStatusDir *dir, char **dnames, guint n, guint i,
                  const char *base)
{
    char *dname;
    SyncStatusDirent *dirent;
    char *fullpath = ((void*)0);

    dname = dnames[i];
    fullpath = g_strconcat (base, "/", dname, ((void*)0));

    dirent = g_hash_table_lookup (dir->dirents, dname);
    if (dirent) {
        if (S_ISDIR(dirent->mode)) {
            if (i == (n-1)) {
                if (is_empty_dir(dirent))
                    remove_item (dir, dname, fullpath);
            } else {
                delete_recursive (dirent->subdir, dnames, n, ++i, fullpath);



                if (is_empty_dir(dirent))
                    remove_item (dir, dname, fullpath);
            }
        } else if (i == (n-1)) {
            remove_item (dir, dname, fullpath);
        }
    }

    g_free (fullpath);
}
