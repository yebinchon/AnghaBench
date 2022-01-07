
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ngx_http_time (int *,long) ;

void
ngx_http_lua_ffi_http_time(u_char *buf, long t)
{
    ngx_http_time(buf, t);
}
