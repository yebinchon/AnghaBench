
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
typedef TYPE_1__ HttpTxTask ;


 int curl_error_to_http_task_error (int) ;

__attribute__((used)) static void
handle_curl_errors (HttpTxTask *task, int curl_error)
{
    task->error = curl_error_to_http_task_error (curl_error);
}
