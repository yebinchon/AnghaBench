
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_header_t ;
struct TYPE_3__ {scalar_t__ hdr; } ;
struct TYPE_4__ {int headers; int url; int context; int flags; int headers_len; TYPE_1__ hdr; } ;
typedef TYPE_2__ open_url_task_t ;
typedef int appinfo_t ;


 int INTERNET_InternetOpenUrlW (int *,int ,int ,int ,int ,int ) ;
 int TRACE (char*,scalar_t__) ;
 int heap_free (int ) ;

__attribute__((used)) static void AsyncInternetOpenUrlProc(task_header_t *hdr)
{
    open_url_task_t *task = (open_url_task_t*)hdr;

    TRACE("%p\n", task->hdr.hdr);

    INTERNET_InternetOpenUrlW((appinfo_t*)task->hdr.hdr, task->url, task->headers,
            task->headers_len, task->flags, task->context);
    heap_free(task->url);
    heap_free(task->headers);
}
