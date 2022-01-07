
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
 int verify_seafile (char const*,void*,int,int ,int) ;

gboolean
seaf_fs_manager_verify_seafile (SeafFSManager *mgr,
                                const char *repo_id,
                                int version,
                                const char *file_id,
                                gboolean verify_id,
                                gboolean *io_error)
{
    void *data;
    int len;

    if (memcmp (file_id, EMPTY_SHA1, 40) == 0) {
        return TRUE;
    }

    if (seaf_obj_store_read_obj (mgr->obj_store, repo_id, version,
                                 file_id, &data, &len) < 0) {
        seaf_warning ("[fs mgr] Failed to read file %s:%s.\n", repo_id, file_id);
        *io_error = TRUE;
        return FALSE;
    }

    gboolean ret = verify_seafile (file_id, data, len, verify_id, (version > 0));
    g_free (data);

    return ret;
}
