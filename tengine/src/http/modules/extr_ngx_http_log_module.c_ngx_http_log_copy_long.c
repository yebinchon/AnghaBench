
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_http_request_t ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_http_log_op_t ;


 int * ngx_cpymem (int *,int *,int ) ;

__attribute__((used)) static u_char *
ngx_http_log_copy_long(ngx_http_request_t *r, u_char *buf,
    ngx_http_log_op_t *op)
{
    return ngx_cpymem(buf, (u_char *) op->data, op->len);
}
