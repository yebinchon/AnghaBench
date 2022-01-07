
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * (* open_block ) (TYPE_2__*,char const*,int,char const*,int) ;} ;
struct TYPE_4__ {TYPE_2__* backend; } ;
typedef TYPE_1__ SeafBlockManager ;
typedef int BlockHandle ;


 int is_object_id_valid (char const*) ;
 int is_uuid_valid (char const*) ;
 int * stub1 (TYPE_2__*,char const*,int,char const*,int) ;

BlockHandle *
seaf_block_manager_open_block (SeafBlockManager *mgr,
                               const char *store_id,
                               int version,
                               const char *block_id,
                               int rw_type)
{
    if (!store_id || !is_uuid_valid(store_id) ||
        !block_id || !is_object_id_valid(block_id))
        return ((void*)0);

    return mgr->backend->open_block (mgr->backend,
                                     store_id, version,
                                     block_id, rw_type);
}
