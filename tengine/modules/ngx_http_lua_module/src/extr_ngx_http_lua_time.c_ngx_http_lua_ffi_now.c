
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double sec; double msec; } ;
typedef TYPE_1__ ngx_time_t ;


 TYPE_1__* ngx_timeofday () ;

double
ngx_http_lua_ffi_now(void)
{
    ngx_time_t *tp;

    tp = ngx_timeofday();

    return tp->sec + tp->msec / 1000.0;
}
