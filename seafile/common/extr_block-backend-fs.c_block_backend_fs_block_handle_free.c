
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rw_type; struct TYPE_5__* store_id; struct TYPE_5__* tmp_file; } ;
typedef int BlockBackend ;
typedef TYPE_1__ BHandle ;


 scalar_t__ BLOCK_WRITE ;
 int g_free (TYPE_1__*) ;
 int g_unlink (TYPE_1__*) ;

__attribute__((used)) static void
block_backend_fs_block_handle_free (BlockBackend *bend,
                                    BHandle *handle)
{
    if (handle->rw_type == BLOCK_WRITE) {

        g_unlink (handle->tmp_file);
        g_free (handle->tmp_file);
    }
    g_free (handle->store_id);
    g_free (handle);
}
