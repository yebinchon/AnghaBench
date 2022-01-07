
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_3__ {int url; } ;
typedef TYPE_1__ download_proc_task_t ;


 int CoTaskMemFree (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void set_downloading_task_destr(task_t *_task)
{
    download_proc_task_t *task = (download_proc_task_t*)_task;

    CoTaskMemFree(task->url);
    heap_free(task);
}
