
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int priv; } ;
typedef TYPE_1__ ObjBackend ;


 int SEAF_PATH_MAX ;
 scalar_t__ create_parent_path (char*) ;
 int id_to_path (int ,char const*,char*,char const*,int) ;
 scalar_t__ save_obj_contents (char*,void*,int,int ) ;
 int seaf_warning (char*,char const*,char const*) ;

__attribute__((used)) static int
obj_backend_fs_write (ObjBackend *bend,
                      const char *repo_id,
                      int version,
                      const char *obj_id,
                      void *data,
                      int len,
                      gboolean need_sync)
{
    char path[SEAF_PATH_MAX];

    id_to_path (bend->priv, obj_id, path, repo_id, version);





    if (create_parent_path (path) < 0) {
        seaf_warning ("[obj backend] Failed to create path for obj %s:%s.\n",
                      repo_id, obj_id);
        return -1;
    }

    if (save_obj_contents (path, data, len, need_sync) < 0) {
        seaf_warning ("[obj backend] Failed to write obj %s:%s.\n",
                      repo_id, obj_id);
        return -1;
    }






    return 0;
}
