
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SeafObjStore {TYPE_1__* bend; } ;
typedef int gboolean ;
struct TYPE_3__ {int (* write ) (TYPE_1__*,char const*,int,char const*,void*,int,int ) ;} ;
typedef TYPE_1__ ObjBackend ;


 int is_object_id_valid (char const*) ;
 int is_uuid_valid (char const*) ;
 int stub1 (TYPE_1__*,char const*,int,char const*,void*,int,int ) ;

int
seaf_obj_store_write_obj (struct SeafObjStore *obj_store,
                          const char *repo_id,
                          int version,
                          const char *obj_id,
                          void *data,
                          int len,
                          gboolean need_sync)
{
    ObjBackend *bend = obj_store->bend;

    if (!repo_id || !is_uuid_valid(repo_id) ||
        !obj_id || !is_object_id_valid(obj_id))
        return -1;

    return bend->write (bend, repo_id, version, obj_id, data, len, need_sync);
}
