
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ gint ;
struct TYPE_8__ {TYPE_1__* sync_mgr; int block_mgr; } ;
struct TYPE_7__ {scalar_t__ state; int tx_bytes; int error; int repo_id; scalar_t__ all_stop; } ;
struct TYPE_6__ {int block_id; int block; TYPE_3__* task; } ;
struct TYPE_5__ {scalar_t__ download_limit; int recv_bytes; } ;
typedef TYPE_2__ SendBlockData ;
typedef TYPE_3__ HttpTxTask ;


 scalar_t__ HTTP_TASK_STATE_CANCELED ;
 int SYNC_ERROR_ID_WRITE_LOCAL_DATA ;
 int g_atomic_int_add (int *,size_t) ;
 scalar_t__ g_atomic_int_get (int *) ;
 int g_usleep (int) ;
 TYPE_4__* seaf ;
 size_t seaf_block_manager_write_block (int ,int ,void*,size_t) ;
 int seaf_warning (char*,int ,int ) ;

__attribute__((used)) static size_t
get_block_callback (void *ptr, size_t size, size_t nmemb, void *userp)
{
    size_t realsize = size *nmemb;
    SendBlockData *data = userp;
    HttpTxTask *task = data->task;
    size_t n;

    if (task->state == HTTP_TASK_STATE_CANCELED || task->all_stop)
        return 0;

    n = seaf_block_manager_write_block (seaf->block_mgr,
                                        data->block,
                                        ptr, realsize);
    if (n < realsize) {
        seaf_warning ("Failed to write block %s in repo %.8s.\n",
                      data->block_id, task->repo_id);
        task->error = SYNC_ERROR_ID_WRITE_LOCAL_DATA;
        return n;
    }


    g_atomic_int_add (&(seaf->sync_mgr->recv_bytes), n);


    g_atomic_int_add (&task->tx_bytes, n);






    while (1) {
        gint sent = g_atomic_int_get(&(seaf->sync_mgr->recv_bytes));
        if (seaf->sync_mgr->download_limit > 0 &&
            sent > seaf->sync_mgr->download_limit)

            g_usleep (100000);
        else
            break;
    }

    return n;
}
