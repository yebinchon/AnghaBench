
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double start_sec; double start_msec; } ;
typedef TYPE_1__ ngx_http_request_t ;



double
ngx_http_lua_ffi_req_start_time(ngx_http_request_t *r)
{
    return r->start_sec + r->start_msec / 1000.0;
}
