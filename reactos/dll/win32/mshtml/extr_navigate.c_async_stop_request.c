
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int header; TYPE_4__* bsc; } ;
typedef TYPE_3__ stop_request_task_t ;
struct TYPE_8__ {TYPE_2__* window; int IBindStatusCallback_iface; int readed; } ;
struct TYPE_11__ {TYPE_1__ bsc; } ;
typedef TYPE_4__ nsChannelBSC ;
struct TYPE_9__ {int task_magic; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IBindStatusCallback_AddRef (int *) ;
 int TRACE (char*) ;
 TYPE_3__* heap_alloc (int) ;
 int on_start_nsrequest (TYPE_4__*) ;
 int push_task (int *,int ,int ,int ) ;
 int stop_request_proc ;
 int stop_request_task_destr ;

__attribute__((used)) static HRESULT async_stop_request(nsChannelBSC *This)
{
    stop_request_task_t *task;

    if(!This->bsc.readed) {
        TRACE("No data read, calling OnStartRequest\n");
        on_start_nsrequest(This);
    }

    task = heap_alloc(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    IBindStatusCallback_AddRef(&This->bsc.IBindStatusCallback_iface);
    task->bsc = This;

    return push_task(&task->header, stop_request_proc, stop_request_task_destr, This->bsc.window->task_magic);
}
