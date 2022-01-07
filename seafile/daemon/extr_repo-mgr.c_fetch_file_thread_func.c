
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* gpointer ;
typedef int gboolean ;
struct TYPE_13__ {int sync_mgr; } ;
struct TYPE_12__ {int mode; int name; int sha1; } ;
struct TYPE_11__ {char* repo_id; TYPE_1__* http_task; int * finished_tasks; } ;
struct TYPE_10__ {int result; scalar_t__ skip_fetch; TYPE_4__* de; } ;
struct TYPE_9__ {int is_clone; } ;
typedef int GAsyncQueue ;
typedef TYPE_2__ FileTxTask ;
typedef TYPE_3__ FileTxData ;
typedef TYPE_4__ DiffEntry ;


 int FETCH_CHECKOUT_CANCELED ;
 int FETCH_CHECKOUT_SUCCESS ;
 int FETCH_CHECKOUT_TRANSFER_ERROR ;
 int SYNC_STATUS_SYNCING ;
 int fetch_file_http (TYPE_3__*,TYPE_2__*) ;
 int g_async_queue_push (int *,TYPE_2__*) ;
 int rawdata_to_hex (int ,char*,int) ;
 TYPE_5__* seaf ;
 int seaf_debug (char*) ;
 int seaf_sync_manager_update_active_path (int ,char*,int ,int ,int ) ;
 int seaf_warning (char*) ;

__attribute__((used)) static void
fetch_file_thread_func (gpointer data, gpointer user_data)
{
    FileTxTask *task = data;
    FileTxData *tx_data = user_data;
    GAsyncQueue *finished_tasks = tx_data->finished_tasks;
    DiffEntry *de = task->de;
    char *repo_id = tx_data->repo_id;
    char file_id[41];
    gboolean is_clone = tx_data->http_task->is_clone;
    int rc = FETCH_CHECKOUT_SUCCESS;

    if (task->skip_fetch)
        goto out;

    rawdata_to_hex (de->sha1, file_id, 20);



    if (!is_clone)
        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              repo_id,
                                              de->name,
                                              de->mode,
                                              SYNC_STATUS_SYNCING);

    rc = fetch_file_http (tx_data, task);




    if (rc == FETCH_CHECKOUT_CANCELED) {
        seaf_debug ("Transfer canceled.\n");
    } else if (rc == FETCH_CHECKOUT_TRANSFER_ERROR) {
        seaf_warning ("Transfer failed.\n");
    }

out:
    task->result = rc;
    g_async_queue_push (finished_tasks, task);
}
