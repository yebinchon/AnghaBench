
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int obj_store; } ;
typedef TYPE_1__ SeafFSManager ;


 int EMPTY_SHA1 ;
 int TRUE ;
 scalar_t__ memcmp (char const*,int ,int) ;
 int seaf_obj_store_obj_exists (int ,char const*,int,char const*) ;

gboolean
seaf_fs_manager_object_exists (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *id)
{

    if (memcmp (id, EMPTY_SHA1, 40) == 0)
        return TRUE;

    return seaf_obj_store_obj_exists (mgr->obj_store, repo_id, version, id);
}
