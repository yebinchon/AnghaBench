
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int directory_len; int directory; TYPE_1__ hdr; } ;
typedef TYPE_2__ get_current_dir_task_t ;
typedef int ftp_session_t ;


 int FTP_FtpGetCurrentDirectoryW (int *,int ,int ) ;
 int TRACE (char*,int *) ;

__attribute__((used)) static void AsyncFtpGetCurrentDirectoryProc(task_header_t *hdr)
{
    get_current_dir_task_t *task = (get_current_dir_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpGetCurrentDirectoryW(session, task->directory, task->directory_len);
}
