
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int dst_file; int src_file; TYPE_1__ hdr; } ;
typedef TYPE_2__ rename_file_task_t ;
typedef int ftp_session_t ;


 int FTP_FtpRenameFileW (int *,int ,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncFtpRenameFileProc(task_header_t *hdr)
{
    rename_file_task_t *task = (rename_file_task_t*)hdr;
    ftp_session_t *session = (ftp_session_t*)task->hdr.hdr;

    TRACE("%p\n", session);

    FTP_FtpRenameFileW(session, task->src_file, task->dst_file);
    heap_free(task->src_file);
    heap_free(task->dst_file);
}
