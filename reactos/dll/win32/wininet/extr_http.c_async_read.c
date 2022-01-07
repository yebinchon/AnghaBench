
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** ret_read; int hdr; void* read_pos; void* size; void* buf; } ;
typedef TYPE_1__ read_file_task_t ;
struct TYPE_6__ {int hdr; } ;
typedef TYPE_2__ http_request_t ;
typedef void* DWORD ;


 void* ERROR_IO_PENDING ;
 void* ERROR_OUTOFMEMORY ;
 int INTERNET_AsyncCall (int *) ;
 TYPE_1__* alloc_async_task (int *,int ,int) ;
 int async_read_file_proc ;

__attribute__((used)) static DWORD async_read(http_request_t *req, void *buf, DWORD size, DWORD read_pos, DWORD *ret_read)
{
    read_file_task_t *task;

    task = alloc_async_task(&req->hdr, async_read_file_proc, sizeof(*task));
    if(!task)
        return ERROR_OUTOFMEMORY;

    task->buf = buf;
    task->size = size;
    task->read_pos = read_pos;
    task->ret_read = ret_read;

    INTERNET_AsyncCall(&task->hdr);
    return ERROR_IO_PENDING;
}
