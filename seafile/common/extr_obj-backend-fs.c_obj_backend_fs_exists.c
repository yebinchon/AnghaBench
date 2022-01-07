
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int priv; } ;
typedef int SeafStat ;
typedef TYPE_1__ ObjBackend ;


 int FALSE ;
 int SEAF_PATH_MAX ;
 int TRUE ;
 int id_to_path (int ,char const*,char*,char const*,int) ;
 scalar_t__ seaf_stat (char*,int *) ;

__attribute__((used)) static gboolean
obj_backend_fs_exists (ObjBackend *bend,
                       const char *repo_id,
                       int version,
                       const char *obj_id)
{
    char path[SEAF_PATH_MAX];
    SeafStat st;

    id_to_path (bend->priv, obj_id, path, repo_id, version);

    if (seaf_stat (path, &st) == 0)
        return TRUE;

    return FALSE;
}
