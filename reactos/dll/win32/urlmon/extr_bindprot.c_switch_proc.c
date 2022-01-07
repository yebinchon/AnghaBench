
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__ switch_task_t ;
struct TYPE_6__ {int protocol_handler; } ;
typedef TYPE_2__ BindProtocol ;


 int IInternetProtocol_Continue (int ,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void switch_proc(BindProtocol *bind, task_header_t *t)
{
    switch_task_t *task = (switch_task_t*)t;

    IInternetProtocol_Continue(bind->protocol_handler, task->data);

    heap_free(task);
}
