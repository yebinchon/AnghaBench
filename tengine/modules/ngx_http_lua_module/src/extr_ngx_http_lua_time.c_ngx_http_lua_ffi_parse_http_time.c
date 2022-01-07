
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 long ngx_http_parse_time (int *,size_t) ;

void
ngx_http_lua_ffi_parse_http_time(const u_char *str, size_t len,
    long *time)
{

    *time = ngx_http_parse_time((u_char *) str, len);
}
