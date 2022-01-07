
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_6__ {struct TYPE_6__* str; int err; int hres; } ;
typedef TYPE_1__ report_result_task_t ;
struct TYPE_7__ {int protocol_sink_handler; } ;
typedef TYPE_2__ BindProtocol ;


 int IInternetProtocolSink_ReportResult (int ,int ,int ,TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void report_result_proc(BindProtocol *This, task_header_t *t)
{
    report_result_task_t *task = (report_result_task_t*)t;

    IInternetProtocolSink_ReportResult(This->protocol_sink_handler, task->hres, task->err, task->str);

    heap_free(task->str);
    heap_free(task);
}
