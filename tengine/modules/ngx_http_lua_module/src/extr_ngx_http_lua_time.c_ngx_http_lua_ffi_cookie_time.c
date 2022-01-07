
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int * ngx_http_cookie_time (int *,long) ;

int
ngx_http_lua_ffi_cookie_time(u_char *buf, long t)
{
    u_char *p;

    p = ngx_http_cookie_time(buf, t);
    return p - buf;
}
