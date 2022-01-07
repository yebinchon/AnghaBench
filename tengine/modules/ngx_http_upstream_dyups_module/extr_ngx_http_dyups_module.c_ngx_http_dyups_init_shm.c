
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int init; int data; } ;
typedef TYPE_1__ ngx_shm_zone_t ;
struct TYPE_8__ {int shm_size; int shm_name; } ;
typedef TYPE_2__ ngx_http_dyups_main_conf_t ;
struct TYPE_9__ {int pool; int log; } ;
typedef TYPE_3__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_DEBUG ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_dyups_get_shm_name (int *,int ,int ) ;
 int ngx_http_dyups_init_shm_zone ;
 int ngx_http_dyups_module ;
 int ngx_http_dyups_shm_generation ;
 int ngx_log_error (int ,int ,int ,char*,int *,int ) ;
 TYPE_1__* ngx_shared_memory_add (TYPE_3__*,int *,int ,int *) ;

__attribute__((used)) static char *
ngx_http_dyups_init_shm(ngx_conf_t *cf, void *conf)
{
    ngx_http_dyups_main_conf_t *dmcf = conf;

    ngx_shm_zone_t *shm_zone;

    ngx_http_dyups_shm_generation++;

    if (ngx_http_dyups_get_shm_name(&dmcf->shm_name, cf->pool,
                                     ngx_http_dyups_shm_generation)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    shm_zone = ngx_shared_memory_add(cf, &dmcf->shm_name, dmcf->shm_size,
                                     &ngx_http_dyups_module);
    if (shm_zone == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    ngx_log_error(NGX_LOG_DEBUG, cf->log, 0,
                  "[dyups] init shm:%V, size:%ui", &dmcf->shm_name,
                  dmcf->shm_size);

    shm_zone->data = cf->pool;
    shm_zone->init = ngx_http_dyups_init_shm_zone;

    return NGX_CONF_OK;
}
