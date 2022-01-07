
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_19__ {scalar_t__ len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_20__ {TYPE_5__* data; int init; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
struct TYPE_21__ {TYPE_3__ name; int * log; TYPE_6__* main_conf; } ;
typedef TYPE_5__ ngx_http_lua_shdict_ctx_t ;
struct TYPE_22__ {int requires_shm; int * shdict_zones; } ;
typedef TYPE_6__ ngx_http_lua_main_conf_t ;
struct TYPE_23__ {TYPE_2__* cycle; int pool; TYPE_1__* args; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef int ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_18__ {int new_log; } ;
struct TYPE_17__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (int *,int ,int,int) ;
 TYPE_4__** ngx_array_push (int *) ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*,TYPE_3__*,...) ;
 int ngx_http_lua_module ;
 TYPE_4__* ngx_http_lua_shared_memory_add (TYPE_7__*,TYPE_3__*,size_t,int *) ;
 int ngx_http_lua_shdict_init_zone ;
 int * ngx_palloc (int ,int) ;
 int ngx_parse_size (TYPE_3__*) ;
 TYPE_5__* ngx_pcalloc (int ,int) ;

char *
ngx_http_lua_shared_dict(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_lua_main_conf_t *lmcf = conf;

    ngx_str_t *value, name;
    ngx_shm_zone_t *zone;
    ngx_shm_zone_t **zp;
    ngx_http_lua_shdict_ctx_t *ctx;
    ssize_t size;

    if (lmcf->shdict_zones == ((void*)0)) {
        lmcf->shdict_zones = ngx_palloc(cf->pool, sizeof(ngx_array_t));
        if (lmcf->shdict_zones == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        if (ngx_array_init(lmcf->shdict_zones, cf->pool, 2,
                           sizeof(ngx_shm_zone_t *))
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    ctx = ((void*)0);

    if (value[1].len == 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid lua shared dict name \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    name = value[1];

    size = ngx_parse_size(&value[2]);

    if (size <= 8191) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid lua shared dict size \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    ctx = ngx_pcalloc(cf->pool, sizeof(ngx_http_lua_shdict_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ctx->name = name;
    ctx->main_conf = lmcf;
    ctx->log = &cf->cycle->new_log;

    zone = ngx_http_lua_shared_memory_add(cf, &name, (size_t) size,
                                          &ngx_http_lua_module);
    if (zone == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    if (zone->data) {
        ctx = zone->data;

        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "lua_shared_dict \"%V\" is already defined as "
                           "\"%V\"", &name, &ctx->name);
        return NGX_CONF_ERROR;
    }

    zone->init = ngx_http_lua_shdict_init_zone;
    zone->data = ctx;

    zp = ngx_array_push(lmcf->shdict_zones);
    if (zp == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    *zp = zone;

    lmcf->requires_shm = 1;

    return NGX_CONF_OK;
}
