
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
typedef TYPE_1__ HttpTxTask ;


 int http_error_to_http_task_error (int) ;

__attribute__((used)) static void
handle_http_errors (HttpTxTask *task, int status)
{
    task->error = http_error_to_http_task_error (status);
}
