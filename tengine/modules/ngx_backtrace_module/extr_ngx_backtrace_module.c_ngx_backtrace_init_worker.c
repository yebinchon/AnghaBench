
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_init_error_signals (int ) ;

__attribute__((used)) static ngx_int_t
ngx_backtrace_init_worker(ngx_cycle_t *cycle)
{
    if (ngx_init_error_signals(cycle->log) == NGX_ERROR) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
