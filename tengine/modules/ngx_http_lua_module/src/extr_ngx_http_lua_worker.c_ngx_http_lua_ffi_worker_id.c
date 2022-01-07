
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NGX_PROCESS_SINGLE ;
 scalar_t__ NGX_PROCESS_WORKER ;
 scalar_t__ ngx_process ;
 scalar_t__ ngx_worker ;

int
ngx_http_lua_ffi_worker_id(void)
{
    return -1;

}
