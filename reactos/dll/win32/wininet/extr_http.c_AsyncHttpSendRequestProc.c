
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int headers; int end_request; int content_len; int optional_len; int optional; int headers_len; TYPE_1__ hdr; } ;
typedef TYPE_2__ send_request_task_t ;
typedef int http_request_t ;


 int HTTP_HttpSendRequestW (int *,int ,int ,int ,int ,int ,int ) ;
 int TRACE (char*,int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncHttpSendRequestProc(task_header_t *hdr)
{
    send_request_task_t *task = (send_request_task_t*)hdr;
    http_request_t *request = (http_request_t*)task->hdr.hdr;

    TRACE("%p\n", request);

    HTTP_HttpSendRequestW(request, task->headers, task->headers_len, task->optional,
            task->optional_len, task->content_len, task->end_request);

    heap_free(task->headers);
}
