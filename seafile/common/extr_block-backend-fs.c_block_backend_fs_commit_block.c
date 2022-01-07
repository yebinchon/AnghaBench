
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rw_type; int block_id; int store_id; int tmp_file; int version; } ;
typedef int BlockBackend ;
typedef TYPE_1__ BHandle ;


 scalar_t__ BLOCK_WRITE ;
 int SEAF_PATH_MAX ;
 scalar_t__ create_parent_path (char*) ;
 int errno ;
 scalar_t__ g_rename (int ,char*) ;
 int g_return_val_if_fail (int,int) ;
 int get_block_path (int *,int ,char*,int ,int ) ;
 int seaf_warning (char*,int ,int ,...) ;
 int strerror (int ) ;

__attribute__((used)) static int
block_backend_fs_commit_block (BlockBackend *bend,
                               BHandle *handle)
{
    char path[SEAF_PATH_MAX];

    g_return_val_if_fail (handle->rw_type == BLOCK_WRITE, -1);

    get_block_path (bend, handle->block_id, path, handle->store_id, handle->version);

    if (create_parent_path (path) < 0) {
        seaf_warning ("Failed to create path for block %s:%s.\n",
                      handle->store_id, handle->block_id);
        return -1;
    }

    if (g_rename (handle->tmp_file, path) < 0) {
        seaf_warning ("[block bend] failed to commit block %s:%s: %s\n",
                      handle->store_id, handle->block_id, strerror(errno));
        return -1;
    }

    return 0;
}
