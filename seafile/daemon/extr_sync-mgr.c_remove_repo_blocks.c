
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int block_mgr; } ;
struct TYPE_5__ {TYPE_1__* repo; } ;
struct TYPE_4__ {int id; int version; } ;
typedef TYPE_2__ SyncTask ;
typedef int GHashTable ;


 int g_hash_table_destroy (int *) ;
 scalar_t__ g_hash_table_size (int *) ;
 int * load_locked_files_blocks (int ) ;
 int remove_block_cb ;
 TYPE_3__* seaf ;
 int seaf_block_manager_foreach_block (int ,int ,int ,int ,int *) ;
 int seaf_block_manager_remove_store (int ,int ) ;

__attribute__((used)) static void *
remove_repo_blocks (void *vtask)
{
    SyncTask *task = vtask;
    seaf_block_manager_remove_store (seaf->block_mgr, task->repo->id);


    return vtask;
}
