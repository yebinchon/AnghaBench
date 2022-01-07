
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int thread_hwnd; int task_list; } ;
typedef TYPE_1__ thread_data_t ;
struct TYPE_11__ {int entry; int (* destr ) (TYPE_2__*) ;int (* proc ) (TYPE_2__*) ;int target_magic; } ;
typedef TYPE_2__ task_t ;
typedef int (* task_proc_t ) (TYPE_2__*) ;
typedef int LONG ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int PostMessageW (int ,int ,int ,int ) ;
 int S_OK ;
 int TRUE ;
 int WM_PROCESSTASK ;
 int default_task_destr (TYPE_2__*) ;
 TYPE_1__* get_thread_data (int ) ;
 int heap_free (TYPE_2__*) ;
 int list_add_tail (int *,int *) ;

HRESULT push_task(task_t *task, task_proc_t proc, task_proc_t destr, LONG magic)
{
    thread_data_t *thread_data;

    thread_data = get_thread_data(TRUE);
    if(!thread_data) {
        if(destr)
            destr(task);
        else
            heap_free(task);
        return E_OUTOFMEMORY;
    }

    task->target_magic = magic;
    task->proc = proc;
    task->destr = destr ? destr : default_task_destr;

    list_add_tail(&thread_data->task_list, &task->entry);

    PostMessageW(thread_data->thread_hwnd, WM_PROCESSTASK, 0, 0);
    return S_OK;
}
