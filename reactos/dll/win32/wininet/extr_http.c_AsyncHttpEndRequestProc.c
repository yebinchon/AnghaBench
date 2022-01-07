
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
typedef int http_request_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int context; int flags; TYPE_1__ hdr; } ;
typedef TYPE_2__ end_request_task_t ;


 int HTTP_HttpEndRequestW (int *,int ,int ) ;
 int TRACE (char*,int *) ;

__attribute__((used)) static void AsyncHttpEndRequestProc(task_header_t *hdr)
{
    end_request_task_t *task = (end_request_task_t*)hdr;
    http_request_t *req = (http_request_t*)task->hdr.hdr;

    TRACE("%p\n", req);

    HTTP_HttpEndRequestW(req, task->flags, task->context);
}
