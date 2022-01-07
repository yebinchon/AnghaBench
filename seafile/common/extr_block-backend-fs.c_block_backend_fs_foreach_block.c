
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int path ;
typedef int block_id ;
struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {int block_dir; int v0_block_dir; } ;
typedef int (* SeafBlockFunc ) (char const*,int,char*,void*) ;
typedef int GDir ;
typedef TYPE_1__ FsPriv ;
typedef TYPE_2__ BlockBackend ;


 int SEAF_PATH_MAX ;
 char* g_build_filename (int ,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 char* g_strdup (int ) ;
 int memcpy (char*,char*,int) ;
 int seaf_warning (char*,char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int
block_backend_fs_foreach_block (BlockBackend *bend,
                                const char *store_id,
                                int version,
                                SeafBlockFunc process,
                                void *user_data)
{
    FsPriv *priv = bend->be_priv;
    char *block_dir = ((void*)0);
    int dir_len;
    GDir *dir1 = ((void*)0), *dir2;
    const char *dname1, *dname2;
    char block_id[128];
    char path[SEAF_PATH_MAX], *pos;
    int ret = 0;







    block_dir = g_build_filename (priv->block_dir, store_id, ((void*)0));

    dir_len = strlen (block_dir);

    dir1 = g_dir_open (block_dir, 0, ((void*)0));
    if (!dir1) {
        goto out;
    }

    memcpy (path, block_dir, dir_len);
    pos = path + dir_len;

    while ((dname1 = g_dir_read_name(dir1)) != ((void*)0)) {
        snprintf (pos, sizeof(path) - dir_len, "/%s", dname1);

        dir2 = g_dir_open (path, 0, ((void*)0));
        if (!dir2) {
            seaf_warning ("Failed to open block dir %s.\n", path);
            continue;
        }

        while ((dname2 = g_dir_read_name(dir2)) != ((void*)0)) {
            snprintf (block_id, sizeof(block_id), "%s%s", dname1, dname2);
            if (!process (store_id, version, block_id, user_data)) {
                g_dir_close (dir2);
                goto out;
            }
        }
        g_dir_close (dir2);
    }

out:
    if (dir1)
        g_dir_close (dir1);
    g_free (block_dir);

    return ret;
}
