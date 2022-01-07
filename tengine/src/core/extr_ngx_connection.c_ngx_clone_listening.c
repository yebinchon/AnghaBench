
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int worker; int reuseport; } ;
typedef TYPE_1__ ngx_listening_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int listening; int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_9__ {int worker_processes; } ;
typedef TYPE_3__ ngx_core_conf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_array_push (int *) ;
 int ngx_core_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;

ngx_int_t
ngx_clone_listening(ngx_cycle_t *cycle, ngx_listening_t *ls)
{
    return NGX_OK;
}
