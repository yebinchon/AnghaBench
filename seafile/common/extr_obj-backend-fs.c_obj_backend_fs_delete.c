
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv; } ;
typedef TYPE_1__ ObjBackend ;


 int SEAF_PATH_MAX ;
 int g_unlink (char*) ;
 int id_to_path (int ,char const*,char*,char const*,int) ;

__attribute__((used)) static void
obj_backend_fs_delete (ObjBackend *bend,
                       const char *repo_id,
                       int version,
                       const char *obj_id)
{
    char path[SEAF_PATH_MAX];

    id_to_path (bend->priv, obj_id, path, repo_id, version);
    g_unlink (path);
}
