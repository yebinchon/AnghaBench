
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thread_hwnd; } ;
typedef TYPE_1__ thread_data_t ;


 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 TYPE_1__* get_thread_data (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void thread_detach(void)
{
    thread_data_t *thread_data;

    thread_data = get_thread_data(FALSE);
    if(!thread_data)
        return;

    if(thread_data->thread_hwnd)
        DestroyWindow(thread_data->thread_hwnd);

    heap_free(thread_data);
}
