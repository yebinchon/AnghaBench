
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int obj_store; } ;
typedef TYPE_1__ SeafFSManager ;


 int EMPTY_SHA1 ;
 int FALSE ;
 int TRUE ;
 int g_free (void*) ;
 scalar_t__ memcmp (char const*,int ,int) ;
 scalar_t__ seaf_obj_store_read_obj (int ,char const*,int,char const*,void**,int*) ;
 int seaf_warning (char*,char const*,char const*) ;
 int verify_fs_object_json (char const*,void*,int) ;
 int verify_fs_object_v0 (char const*,void*,int,int ) ;

gboolean
seaf_fs_manager_verify_object (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *obj_id,
                               gboolean verify_id,
                               gboolean *io_error)
{
    void *data;
    int len;
    gboolean ret = TRUE;

    if (memcmp (obj_id, EMPTY_SHA1, 40) == 0) {
        return TRUE;
    }

    if (seaf_obj_store_read_obj (mgr->obj_store, repo_id, version,
                                 obj_id, &data, &len) < 0) {
        seaf_warning ("[fs mgr] Failed to read object %s:%s.\n", repo_id, obj_id);
        *io_error = TRUE;
        return FALSE;
    }

    if (version == 0)
        ret = verify_fs_object_v0 (obj_id, data, len, verify_id);
    else
        ret = verify_fs_object_json (obj_id, data, len);

    g_free (data);
    return ret;
}
