
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;


 int ngx_http_lua_encode_base64 (TYPE_1__*,TYPE_1__*,int) ;

size_t
ngx_http_lua_ffi_encode_base64(const u_char *src, size_t slen, u_char *dst,
    int no_padding)
{
    ngx_str_t in, out;

    in.data = (u_char *) src;
    in.len = slen;

    out.data = dst;

    ngx_http_lua_encode_base64(&out, &in, no_padding);

    return out.len;
}
