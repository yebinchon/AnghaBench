
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_str_t ;
typedef int ngx_shm_zone_t ;
struct TYPE_10__ {int * display; } ;
typedef TYPE_2__ ngx_http_reqstat_conf_t ;
struct TYPE_11__ {int handler; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_12__ {TYPE_1__* args; int pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_9__ {int nelts; int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 int * ngx_array_create (int ,int,int) ;
 int ** ngx_array_push (int *) ;
 TYPE_3__* ngx_http_conf_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_reqstat_module ;
 int ngx_http_reqstat_show_handler ;
 int * ngx_shared_memory_add (TYPE_4__*,int *,int ,int *) ;

__attribute__((used)) static char *
ngx_http_reqstat_show(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_str_t *value;
    ngx_uint_t i;
    ngx_shm_zone_t *shm_zone, **z;
    ngx_http_core_loc_conf_t *clcf;

    ngx_http_reqstat_conf_t *rlcf = conf;

    value = cf->args->elts;

    if (rlcf->display != NGX_CONF_UNSET_PTR) {
        return "is duplicate";
    }

    if (cf->args->nelts == 1) {
        rlcf->display = ((void*)0);
        goto reg_handler;
    }

    rlcf->display = ngx_array_create(cf->pool, cf->args->nelts - 1,
                                     sizeof(ngx_shm_zone_t *));
    if (rlcf->display == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    for (i = 1; i < cf->args->nelts; i++) {
        shm_zone = ngx_shared_memory_add(cf, &value[i], 0,
                                         &ngx_http_reqstat_module);
        if (shm_zone == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        z = ngx_array_push(rlcf->display);
        *z = shm_zone;
    }

reg_handler:

    clcf = ngx_http_conf_get_module_loc_conf(cf, ngx_http_core_module);
    clcf->handler = ngx_http_reqstat_show_handler;

    return NGX_CONF_OK;
}
