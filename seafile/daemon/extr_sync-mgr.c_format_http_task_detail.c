
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int clone_mgr; int repo_mgr; } ;
struct TYPE_11__ {char* repo_name; } ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ runtime_state; scalar_t__ type; int repo_id; scalar_t__ is_clone; } ;
struct TYPE_9__ {char* name; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ HttpTxTask ;
typedef int GString ;
typedef TYPE_3__ CloneTask ;


 scalar_t__ HTTP_TASK_RT_STATE_FINISHED ;
 scalar_t__ HTTP_TASK_RT_STATE_INIT ;
 scalar_t__ HTTP_TASK_STATE_NORMAL ;
 scalar_t__ HTTP_TASK_TYPE_UPLOAD ;
 int g_string_append_printf (int *,char*,char*,int,char*) ;
 int http_tx_task_get_rate (TYPE_2__*) ;
 TYPE_6__* seaf ;
 TYPE_3__* seaf_clone_manager_get_task (int ,int ) ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,int ) ;

__attribute__((used)) static void
format_http_task_detail (HttpTxTask *task, GString *buf)
{
    if (task->state != HTTP_TASK_STATE_NORMAL ||
        task->runtime_state == HTTP_TASK_RT_STATE_INIT ||
        task->runtime_state == HTTP_TASK_RT_STATE_FINISHED)
        return;

    SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr,
                                                 task->repo_id);
    char *repo_name;
    char *type;

    if (repo) {
        repo_name = repo->name;
        type = (task->type == HTTP_TASK_TYPE_UPLOAD) ? "upload" : "download";

    } else if (task->is_clone) {
        CloneTask *ctask;
        ctask = seaf_clone_manager_get_task (seaf->clone_mgr, task->repo_id);
        repo_name = ctask->repo_name;
        type = "download";

    } else {
        return;
    }
    int rate = http_tx_task_get_rate(task);

    g_string_append_printf (buf, "%s\t%d %s\n", type, rate, repo_name);
}
