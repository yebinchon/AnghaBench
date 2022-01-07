
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
typedef int ftp_session_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int directory; TYPE_1__ hdr; } ;
typedef TYPE_2__ directory_task_t ;


 int FTP_FtpSetCurrentDirectoryW (int *,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncFtpSetCurrentDirectoryProc(task_header_t *hdr)
{
    directory_task_t *task = (directory_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpSetCurrentDirectoryW(session, task->directory);
    heap_free(task->directory);
}
