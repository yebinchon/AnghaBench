
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_11__ {int hdr; void* find_data; } ;
typedef TYPE_4__ find_next_task_t ;
struct TYPE_12__ {int hdr; TYPE_3__* lpFtpSession; } ;
typedef TYPE_5__ WININETFTPFINDNEXTW ;
struct TYPE_10__ {TYPE_2__* lpAppInfo; } ;
struct TYPE_8__ {int dwFlags; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int FTPFINDNEXT_AsyncFindNextFileProc ;
 int FTPFINDNEXT_FindNextFileProc (TYPE_5__*,void*) ;
 int INTERNET_AsyncCall (int *) ;
 int INTERNET_FLAG_ASYNC ;
 TYPE_4__* alloc_async_task (int *,int ,int) ;

__attribute__((used)) static DWORD FTPFINDNEXT_FindNextFileW(object_header_t *hdr, void *data)
{
    WININETFTPFINDNEXTW *find = (WININETFTPFINDNEXTW*)hdr;

    if (find->lpFtpSession->lpAppInfo->hdr.dwFlags & INTERNET_FLAG_ASYNC)
    {
        find_next_task_t *task;

        task = alloc_async_task(&find->hdr, FTPFINDNEXT_AsyncFindNextFileProc, sizeof(*task));
        task->find_data = data;

        INTERNET_AsyncCall(&task->hdr);
        return ERROR_SUCCESS;
    }

    return FTPFINDNEXT_FindNextFileProc(find, data);
}
