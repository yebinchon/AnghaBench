#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_9__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_8__ {scalar_t__ runtime_state; scalar_t__ type; scalar_t__ done_blocks; scalar_t__ n_blocks; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  done_fs_objs; int /*<<< orphan*/  n_fs_objs; int /*<<< orphan*/  done_download; int /*<<< orphan*/  total_download; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  uploaded_bytes; int /*<<< orphan*/  total_bytes; scalar_t__ multipart_upload; } ;
typedef  TYPE_1__ SyncInfo ;
typedef  int /*<<< orphan*/  SeafileTask ;
typedef  TYPE_2__ HttpTxTask ;

/* Variables and functions */
 scalar_t__ HTTP_TASK_RT_STATE_BLOCK ; 
 scalar_t__ HTTP_TASK_RT_STATE_FS ; 
 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_2__*) ; 
 TYPE_4__* seaf ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

__attribute__((used)) static SeafileTask *
FUNC6 (HttpTxTask *task)
{
    SeafileTask *t = FUNC5();

    FUNC0 (t,
                  "repo_id", task->repo_id,
                  "state", FUNC2(task->state),
                  "rt_state", FUNC1(task->runtime_state),
                  NULL);

    if (task->type == HTTP_TASK_TYPE_DOWNLOAD) {
        FUNC0 (t, "ttype", "download", NULL);
        if (task->runtime_state == HTTP_TASK_RT_STATE_BLOCK) {
            FUNC0 (t, "block_total", task->total_download,
                          "block_done", task->done_download,
                          NULL);
            FUNC0 (t, "rate", FUNC3(task), NULL);
        } else if (task->runtime_state == HTTP_TASK_RT_STATE_FS) {
            FUNC0 (t, "fs_objects_total", task->n_fs_objs,
                          "fs_objects_done", task->done_fs_objs,
                          NULL);
        }
    } else {
        FUNC0 (t, "ttype", "upload", NULL);
        if (task->runtime_state == HTTP_TASK_RT_STATE_BLOCK) {
            SyncInfo *info = FUNC4 (seaf->sync_mgr, task->repo_id);
            if (info && info->multipart_upload) {
                FUNC0 (t, "block_total", info->total_bytes,
                              "block_done", info->uploaded_bytes,
                              NULL);
            } else {
                FUNC0 (t, "block_total", (gint64)task->n_blocks,
                              "block_done", (gint64)task->done_blocks,
                              NULL);
            }
            FUNC0 (t, "rate", FUNC3(task), NULL);
        }
    }

    return t;
}