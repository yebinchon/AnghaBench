
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_str_t ;
struct TYPE_8__ {int init; int data; } ;
typedef TYPE_1__ ngx_shm_zone_t ;
struct TYPE_9__ {int check_shm_size; TYPE_7__* peers; } ;
typedef TYPE_2__ ngx_http_upstream_check_main_conf_t ;
struct TYPE_10__ {int pool; int log; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_11__ {int check_shm_name; } ;


 char* NGX_CONF_OK ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_7__* check_peers_ctx ;
 int ngx_http_upstream_check_get_shm_name (int *,int ,int ) ;
 int ngx_http_upstream_check_init_shm_zone ;
 int ngx_http_upstream_check_module ;
 int ngx_http_upstream_check_shm_generation ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int) ;
 TYPE_1__* ngx_shared_memory_add (TYPE_3__*,int *,int,int *) ;

__attribute__((used)) static char *
ngx_http_upstream_check_init_shm(ngx_conf_t *cf, void *conf)
{
    ngx_str_t *shm_name;
    ngx_uint_t shm_size;
    ngx_shm_zone_t *shm_zone;
    ngx_http_upstream_check_main_conf_t *ucmcf = conf;

    ngx_http_upstream_check_shm_generation++;

    shm_name = &ucmcf->peers->check_shm_name;

    ngx_http_upstream_check_get_shm_name(shm_name, cf->pool,
                                ngx_http_upstream_check_shm_generation);


    shm_size = 1 * 1024 * 1024;

    shm_size = shm_size < ucmcf->check_shm_size ?
                          ucmcf->check_shm_size : shm_size;

    shm_zone = ngx_shared_memory_add(cf, shm_name, shm_size,
                                     &ngx_http_upstream_check_module);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "http upstream check, upsteam:%V, shm_zone size:%ui",
                   shm_name, shm_size);

    shm_zone->data = cf->pool;
    check_peers_ctx = ucmcf->peers;

    shm_zone->init = ngx_http_upstream_check_init_shm_zone;

    return NGX_CONF_OK;
}
