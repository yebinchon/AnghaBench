
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_5__ {int progress_max; int progress; int bscf; } ;
typedef TYPE_1__ report_data_task_t ;
struct TYPE_6__ {int protocol_sink_handler; } ;
typedef TYPE_2__ BindProtocol ;


 int IInternetProtocolSink_ReportData (int ,int ,int ,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void report_data_proc(BindProtocol *This, task_header_t *t)
{
    report_data_task_t *task = (report_data_task_t*)t;

    IInternetProtocolSink_ReportData(This->protocol_sink_handler,
            task->bscf, task->progress, task->progress_max);

    heap_free(task);
}
