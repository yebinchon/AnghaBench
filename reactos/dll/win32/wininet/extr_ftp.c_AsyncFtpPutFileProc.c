
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int remote_file; int local_file; int context; int flags; TYPE_1__ hdr; } ;
typedef TYPE_2__ put_file_task_t ;
typedef int ftp_session_t ;


 int FTP_FtpPutFileW (int *,int ,int ,int ,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncFtpPutFileProc(task_header_t *hdr)
{
    put_file_task_t *task = (put_file_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpPutFileW(session, task->local_file, task->remote_file,
               task->flags, task->context);

    heap_free(task->local_file);
    heap_free(task->remote_file);
}
