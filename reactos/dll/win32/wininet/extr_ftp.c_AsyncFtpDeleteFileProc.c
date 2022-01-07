
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
typedef int ftp_session_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int file_name; TYPE_1__ hdr; } ;
typedef TYPE_2__ delete_file_task_t ;


 int FTP_FtpDeleteFileW (int *,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncFtpDeleteFileProc(task_header_t *hdr)
{
    delete_file_task_t *task = (delete_file_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpDeleteFileW(session, task->file_name);
    heap_free(task->file_name);
}
