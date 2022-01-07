
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ngx_quit ;

void
ngx_http_lua_ffi_process_signal_graceful_exit(void)
{
    ngx_quit = 1;
}
