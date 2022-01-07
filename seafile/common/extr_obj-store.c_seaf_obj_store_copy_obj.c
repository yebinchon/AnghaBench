
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SeafObjStore {TYPE_1__* bend; } ;
struct TYPE_3__ {int (* copy ) (TYPE_1__*,char const*,int,char const*,int,char const*) ;} ;
typedef TYPE_1__ ObjBackend ;


 int EMPTY_SHA1 ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (TYPE_1__*,char const*,int,char const*,int,char const*) ;

int
seaf_obj_store_copy_obj (struct SeafObjStore *obj_store,
                         const char *src_repo_id,
                         int src_version,
                         const char *dst_repo_id,
                         int dst_version,
                         const char *obj_id)
{
    ObjBackend *bend = obj_store->bend;

    if (strcmp (obj_id, EMPTY_SHA1) == 0)
        return 0;

    return bend->copy (bend, src_repo_id, src_version, dst_repo_id, dst_version, obj_id);
}
