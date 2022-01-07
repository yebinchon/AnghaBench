
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int request_length; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int ngx_http_log_op_t ;


 int * ngx_sprintf (int *,char*,int ) ;

__attribute__((used)) static u_char *
ngx_http_log_request_length(ngx_http_request_t *r, u_char *buf,
    ngx_http_log_op_t *op)
{
    return ngx_sprintf(buf, "%O", r->request_length);
}
