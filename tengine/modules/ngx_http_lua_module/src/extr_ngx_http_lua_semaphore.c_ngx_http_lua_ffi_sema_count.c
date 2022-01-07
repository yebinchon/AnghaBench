
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resource_count; int wait_count; } ;
typedef TYPE_1__ ngx_http_lua_sema_t ;



int
ngx_http_lua_ffi_sema_count(ngx_http_lua_sema_t *sem)
{
    return sem->resource_count - sem->wait_count;
}
