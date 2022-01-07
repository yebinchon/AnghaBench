
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ HttpTxTask ;


 scalar_t__ HTTP_TASK_TYPE_DOWNLOAD ;
 int g_signal_emit_by_name (int ,char*,TYPE_1__*) ;
 int seaf ;

__attribute__((used)) static void
emit_transfer_done_signal (HttpTxTask *task)
{
    if (task->type == HTTP_TASK_TYPE_DOWNLOAD)
        g_signal_emit_by_name (seaf, "repo-http-fetched", task);
    else
        g_signal_emit_by_name (seaf, "repo-http-uploaded", task);
}
