
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* gpointer ;
struct TYPE_8__ {int finished_tasks; int cpool; TYPE_1__* http_task; } ;
struct TYPE_7__ {int result; int block_size; int block_id; } ;
struct TYPE_6__ {int error; int host; } ;
typedef TYPE_1__ HttpTxTask ;
typedef int Connection ;
typedef TYPE_2__ BlockUploadTask ;
typedef TYPE_3__ BlockUploadData ;


 int SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ;
 int * connection_pool_get_connection (int ) ;
 int connection_pool_return_connection (int ,int *) ;
 int g_async_queue_push (int ,TYPE_2__*) ;
 int seaf_warning (char*,int ) ;
 int send_block (TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static void
upload_block_thread_func (gpointer data, gpointer user_data)
{
    BlockUploadTask *task = data;
    BlockUploadData *tx_data = user_data;
    HttpTxTask *http_task = tx_data->http_task;
    Connection *conn;
    int ret = 0;

    conn = connection_pool_get_connection (tx_data->cpool);
    if (!conn) {
        seaf_warning ("Failed to get connection to host %s.\n", http_task->host);
        http_task->error = SYNC_ERROR_ID_NOT_ENOUGH_MEMORY;
        ret = -1;
        goto out;
    }

    ret = send_block (http_task, conn, task->block_id, &task->block_size);

    connection_pool_return_connection (tx_data->cpool, conn);

out:
    task->result = ret;
    g_async_queue_push (tx_data->finished_tasks, task);
}
