
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int find_data; TYPE_1__ hdr; } ;
typedef TYPE_2__ find_next_task_t ;
typedef int WININETFTPFINDNEXTW ;


 int FTPFINDNEXT_FindNextFileProc (int *,int ) ;

__attribute__((used)) static void FTPFINDNEXT_AsyncFindNextFileProc(task_header_t *hdr)
{
    find_next_task_t *task = (find_next_task_t*)hdr;

    FTPFINDNEXT_FindNextFileProc((WININETFTPFINDNEXTW*)task->hdr.hdr, task->find_data);
}
