
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_6__ {struct TYPE_6__* status_text; int status_code; } ;
typedef TYPE_1__ on_progress_task_t ;
struct TYPE_7__ {int protocol_sink_handler; } ;
typedef TYPE_2__ BindProtocol ;


 int IInternetProtocolSink_ReportProgress (int ,int ,TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void on_progress_proc(BindProtocol *This, task_header_t *t)
{
    on_progress_task_t *task = (on_progress_task_t*)t;

    IInternetProtocolSink_ReportProgress(This->protocol_sink_handler, task->status_code, task->status_text);

    heap_free(task->status_text);
    heap_free(task);
}
