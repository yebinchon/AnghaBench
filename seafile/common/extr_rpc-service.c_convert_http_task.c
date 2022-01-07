
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_9__ {int sync_mgr; } ;
struct TYPE_8__ {scalar_t__ runtime_state; scalar_t__ type; scalar_t__ done_blocks; scalar_t__ n_blocks; int repo_id; int done_fs_objs; int n_fs_objs; int done_download; int total_download; int state; } ;
struct TYPE_7__ {int uploaded_bytes; int total_bytes; scalar_t__ multipart_upload; } ;
typedef TYPE_1__ SyncInfo ;
typedef int SeafileTask ;
typedef TYPE_2__ HttpTxTask ;


 scalar_t__ HTTP_TASK_RT_STATE_BLOCK ;
 scalar_t__ HTTP_TASK_RT_STATE_FS ;
 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ;
 int g_object_set (int *,char*,char*,char*,...) ;
 int http_task_rt_state_to_str (scalar_t__) ;
 int http_task_state_to_str (int ) ;
 char* http_tx_task_get_rate (TYPE_2__*) ;
 TYPE_4__* seaf ;
 TYPE_1__* seaf_sync_manager_get_sync_info (int ,int ) ;
 int * seafile_task_new () ;

__attribute__((used)) static SeafileTask *
convert_http_task (HttpTxTask *task)
{
    SeafileTask *t = seafile_task_new();

    g_object_set (t,
                  "repo_id", task->repo_id,
                  "state", http_task_state_to_str(task->state),
                  "rt_state", http_task_rt_state_to_str(task->runtime_state),
                  ((void*)0));

    if (task->type == HTTP_TASK_TYPE_DOWNLOAD) {
        g_object_set (t, "ttype", "download", ((void*)0));
        if (task->runtime_state == HTTP_TASK_RT_STATE_BLOCK) {
            g_object_set (t, "block_total", task->total_download,
                          "block_done", task->done_download,
                          ((void*)0));
            g_object_set (t, "rate", http_tx_task_get_rate(task), ((void*)0));
        } else if (task->runtime_state == HTTP_TASK_RT_STATE_FS) {
            g_object_set (t, "fs_objects_total", task->n_fs_objs,
                          "fs_objects_done", task->done_fs_objs,
                          ((void*)0));
        }
    } else {
        g_object_set (t, "ttype", "upload", ((void*)0));
        if (task->runtime_state == HTTP_TASK_RT_STATE_BLOCK) {
            SyncInfo *info = seaf_sync_manager_get_sync_info (seaf->sync_mgr, task->repo_id);
            if (info && info->multipart_upload) {
                g_object_set (t, "block_total", info->total_bytes,
                              "block_done", info->uploaded_bytes,
                              ((void*)0));
            } else {
                g_object_set (t, "block_total", (gint64)task->n_blocks,
                              "block_done", (gint64)task->done_blocks,
                              ((void*)0));
            }
            g_object_set (t, "rate", http_tx_task_get_rate(task), ((void*)0));
        }
    }

    return t;
}
