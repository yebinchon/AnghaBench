
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {char* block_dir; } ;
typedef int GDir ;
typedef TYPE_1__ FsPriv ;
typedef TYPE_2__ BlockBackend ;


 char* g_build_filename (char*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_rmdir (char*) ;
 int g_unlink (char*) ;
 int seaf_warning (char*,char*) ;

__attribute__((used)) static int
block_backend_fs_remove_store (BlockBackend *bend, const char *store_id)
{
    FsPriv *priv = bend->be_priv;
    char *block_dir = ((void*)0);
    GDir *dir1, *dir2;
    const char *dname1, *dname2;
    char *path1, *path2;

    block_dir = g_build_filename (priv->block_dir, store_id, ((void*)0));

    dir1 = g_dir_open (block_dir, 0, ((void*)0));
    if (!dir1) {
        g_free (block_dir);
        return 0;
    }

    while ((dname1 = g_dir_read_name(dir1)) != ((void*)0)) {
        path1 = g_build_filename (block_dir, dname1, ((void*)0));

        dir2 = g_dir_open (path1, 0, ((void*)0));
        if (!dir2) {
            seaf_warning ("Failed to open block dir %s.\n", path1);
            g_dir_close (dir1);
            g_free (path1);
            g_free (block_dir);
            return -1;
        }

        while ((dname2 = g_dir_read_name(dir2)) != ((void*)0)) {
            path2 = g_build_filename (path1, dname2, ((void*)0));
            g_unlink (path2);
            g_free (path2);
        }
        g_dir_close (dir2);

        g_rmdir (path1);
        g_free (path1);
    }

    g_dir_close (dir1);
    g_rmdir (block_dir);
    g_free (block_dir);

    return 0;
}
