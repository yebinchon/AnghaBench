
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
typedef int ftp_session_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int search_file; int context; int flags; int find_file_data; TYPE_1__ hdr; } ;
typedef TYPE_2__ find_first_file_task_t ;


 int FTP_FtpFindFirstFileW (int *,int ,int ,int ,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncFtpFindFirstFileProc(task_header_t *hdr)
{
    find_first_file_task_t *task = (find_first_file_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpFindFirstFileW(session, task->search_file, task->find_file_data, task->flags, task->context);
    heap_free(task->search_file);
}
