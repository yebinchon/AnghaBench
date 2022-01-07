
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_8__ {scalar_t__ worker; int reuseport; } ;
typedef TYPE_2__ ngx_listening_t ;
struct TYPE_7__ {scalar_t__ nelts; TYPE_2__* elts; } ;
struct TYPE_9__ {scalar_t__ connection_n; TYPE_1__ listening; int log; int conf_ctx; } ;
typedef TYPE_3__ ngx_cycle_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_clone_listening (TYPE_3__*,TYPE_2__*) ;
 int ngx_events_module ;
 int * ngx_get_conf (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;

__attribute__((used)) static char *
ngx_event_init_conf(ngx_cycle_t *cycle, void *conf)
{





    if (ngx_get_conf(cycle->conf_ctx, ngx_events_module) == ((void*)0)) {
        ngx_log_error(NGX_LOG_EMERG, cycle->log, 0,
                      "no \"events\" section in configuration");
        return NGX_CONF_ERROR;
    }

    if (cycle->connection_n < cycle->listening.nelts + 1) {






        ngx_log_error(NGX_LOG_EMERG, cycle->log, 0,
                      "%ui worker_connections are not enough "
                      "for %ui listening sockets",
                      cycle->connection_n, cycle->listening.nelts);

        return NGX_CONF_ERROR;
    }
    return NGX_CONF_OK;
}
