
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_http_request_t ;
typedef int ngx_http_log_op_t ;
struct TYPE_2__ {int len; int data; } ;


 TYPE_1__ ngx_cached_http_log_iso8601 ;
 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_http_log_iso8601(ngx_http_request_t *r, u_char *buf, ngx_http_log_op_t *op)
{
    return ngx_cpymem(buf, ngx_cached_http_log_iso8601.data,
                      ngx_cached_http_log_iso8601.len);
}
