
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int block_mgr; int fs_mgr; } ;
struct TYPE_8__ {int ref_cnt_lock; int blk_ref_cnts; int repo_version; int repo_id; } ;
struct TYPE_7__ {int n_blocks; char** blk_sha1s; } ;
typedef TYPE_1__ Seafile ;
typedef TYPE_2__ HttpTxTask ;


 int* g_hash_table_lookup (int ,char*) ;
 int g_hash_table_remove (int ,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_5__* seaf ;
 int seaf_block_manager_remove_block (int ,int ,int ,char*) ;
 TYPE_1__* seaf_fs_manager_get_seafile (int ,int ,int ,char const*) ;
 int seaf_warning (char*,int ,char const*) ;
 int seafile_unref (TYPE_1__*) ;

__attribute__((used)) static void
cleanup_file_blocks_http (HttpTxTask *task, const char *file_id)
{
    Seafile *file;
    int i;
    char *block_id;
    int *pcnt;

    file = seaf_fs_manager_get_seafile (seaf->fs_mgr,
                                        task->repo_id, task->repo_version,
                                        file_id);
    if (!file) {
        seaf_warning ("Failed to load seafile object %s:%s\n",
                      task->repo_id, file_id);
        return;
    }

    for (i = 0; i < file->n_blocks; ++i) {
        block_id = file->blk_sha1s[i];

        pthread_mutex_lock (&task->ref_cnt_lock);

        pcnt = g_hash_table_lookup (task->blk_ref_cnts, block_id);
        if (pcnt) {
            --(*pcnt);
            if (*pcnt > 0) {
                pthread_mutex_unlock (&task->ref_cnt_lock);
                continue;
            }
        }

        seaf_block_manager_remove_block (seaf->block_mgr,
                                         task->repo_id, task->repo_version,
                                         block_id);
        g_hash_table_remove (task->blk_ref_cnts, block_id);

        pthread_mutex_unlock (&task->ref_cnt_lock);
    }

    seafile_unref (file);
}
