
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; } ;
struct TYPE_5__ {TYPE_1__ args; } ;
typedef TYPE_2__ ngx_http_request_t ;



size_t
ngx_http_lua_ffi_req_get_querystring_len(ngx_http_request_t *r)
{
    return r->args.len;
}
