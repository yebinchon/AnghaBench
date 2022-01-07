
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_13__ {TYPE_4__* data; } ;
typedef TYPE_3__ ngx_shm_zone_t ;
struct TYPE_14__ {scalar_t__ key_len; } ;
typedef TYPE_4__ ngx_http_reqstat_ctx_t ;
struct TYPE_15__ {TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_11__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 scalar_t__ ngx_atoi (int ,int ) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,...) ;
 int ngx_http_reqstat_module ;
 TYPE_3__* ngx_shared_memory_add (TYPE_5__*,TYPE_2__*,int ,int *) ;

__attribute__((used)) static char *
ngx_http_reqstat_zone_key_length(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    ngx_str_t *value;
    ngx_shm_zone_t *shm_zone;
    ngx_http_reqstat_ctx_t *ctx;

    value = cf->args->elts;

    shm_zone = ngx_shared_memory_add(cf, &value[1], 0,
                                     &ngx_http_reqstat_module);
    if (shm_zone == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (shm_zone->data == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "zone \"%V\" should be defined first",
                           &value[1]);
        return NGX_CONF_ERROR;
    }

    ctx = shm_zone->data;

    ctx->key_len = ngx_atoi(value[2].data, value[2].len);
    if (ctx->key_len == NGX_ERROR) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid key length");
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
