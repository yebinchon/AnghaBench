
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_7__ {int uri; int mon; TYPE_2__* bscallback; } ;
typedef TYPE_3__ navigate_task_t ;
struct TYPE_5__ {int IBindStatusCallback_iface; } ;
struct TYPE_6__ {TYPE_1__ bsc; } ;


 int IBindStatusCallback_Release (int *) ;
 int IMoniker_Release (int ) ;
 int IUri_Release (int ) ;
 int heap_free (TYPE_3__*) ;

__attribute__((used)) static void navigate_task_destr(task_t *_task)
{
    navigate_task_t *task = (navigate_task_t*)_task;

    IBindStatusCallback_Release(&task->bscallback->bsc.IBindStatusCallback_iface);
    IMoniker_Release(task->mon);
    IUri_Release(task->uri);
    heap_free(task);
}
