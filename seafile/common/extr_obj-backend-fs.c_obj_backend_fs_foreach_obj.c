
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int path ;
typedef int obj_id ;
struct TYPE_5__ {int obj_dir; int v0_obj_dir; } ;
struct TYPE_4__ {TYPE_2__* priv; } ;
typedef int (* SeafObjFunc ) (char const*,int,char*,void*) ;
typedef TYPE_1__ ObjBackend ;
typedef int GDir ;
typedef TYPE_2__ FsPriv ;


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
obj_backend_fs_foreach_obj (ObjBackend *bend,
                            const char *repo_id,
                            int version,
                            SeafObjFunc process,
                            void *user_data)
{
    FsPriv *priv = bend->priv;
    char *obj_dir = ((void*)0);
    int dir_len;
    GDir *dir1 = ((void*)0), *dir2;
    const char *dname1, *dname2;
    char obj_id[128];
    char path[SEAF_PATH_MAX], *pos;
    int ret = 0;







    obj_dir = g_build_filename (priv->obj_dir, repo_id, ((void*)0));

    dir_len = strlen (obj_dir);

    dir1 = g_dir_open (obj_dir, 0, ((void*)0));
    if (!dir1) {
        goto out;
    }

    memcpy (path, obj_dir, dir_len);
    pos = path + dir_len;

    while ((dname1 = g_dir_read_name(dir1)) != ((void*)0)) {
        snprintf (pos, sizeof(path) - dir_len, "/%s", dname1);

        dir2 = g_dir_open (path, 0, ((void*)0));
        if (!dir2) {
            seaf_warning ("Failed to open object dir %s.\n", path);
            continue;
        }

        while ((dname2 = g_dir_read_name(dir2)) != ((void*)0)) {
            snprintf (obj_id, sizeof(obj_id), "%s%s", dname1, dname2);
            if (!process (repo_id, version, obj_id, user_data)) {
                g_dir_close (dir2);
                goto out;
            }
        }
        g_dir_close (dir2);
    }

out:
    if (dir1)
        g_dir_close (dir1);
    g_free (obj_dir);

    return ret;
}
