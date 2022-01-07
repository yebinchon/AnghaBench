
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ gsize ;
typedef int gchar ;
struct TYPE_7__ {int message; } ;
struct TYPE_6__ {int priv; } ;
typedef TYPE_1__ ObjBackend ;
typedef TYPE_2__ GError ;


 int SEAF_PATH_MAX ;
 int g_clear_error (TYPE_2__**) ;
 int g_file_get_contents (char*,int **,scalar_t__*,TYPE_2__**) ;
 int id_to_path (int ,char const*,char*,char const*,int) ;
 int seaf_debug (char*,char const*,int ) ;

__attribute__((used)) static int
obj_backend_fs_read (ObjBackend *bend,
                     const char *repo_id,
                     int version,
                     const char *obj_id,
                     void **data,
                     int *len)
{
    char path[SEAF_PATH_MAX];
    gsize tmp_len;
    GError *error = ((void*)0);

    id_to_path (bend->priv, obj_id, path, repo_id, version);



    g_file_get_contents (path, (gchar**)data, &tmp_len, &error);
    if (error) {
        seaf_debug ("[obj backend] Failed to read object %s: %s.\n",
                    obj_id, error->message);
        g_clear_error (&error);
        return -1;

    }

    *len = (int)tmp_len;
    return 0;
}
