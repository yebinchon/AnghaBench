
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; int entry; } ;
typedef TYPE_1__ task_timer_t ;
typedef int HWND ;


 int IDispatch_Release (int ) ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void release_task_timer(HWND thread_hwnd, task_timer_t *timer)
{
    list_remove(&timer->entry);

    IDispatch_Release(timer->disp);

    heap_free(timer);
}
