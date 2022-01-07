
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ngx_pid ;

int
ngx_http_lua_ffi_worker_pid(void)
{
    return (int) ngx_pid;
}
