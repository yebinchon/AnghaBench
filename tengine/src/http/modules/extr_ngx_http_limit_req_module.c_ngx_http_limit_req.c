
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef size_t ngx_uint_t ;
struct TYPE_19__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_20__ {int burst; int delay; TYPE_2__ forbid_action; int * shm_zone; } ;
typedef TYPE_3__ ngx_http_limit_req_limit_t ;
struct TYPE_17__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_21__ {int enable; TYPE_15__ limits; } ;
typedef TYPE_4__ ngx_http_limit_req_conf_t ;
struct TYPE_22__ {int pool; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
struct TYPE_23__ {TYPE_2__ name; } ;
typedef TYPE_6__ ngx_command_t ;
struct TYPE_18__ {int nelts; TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_INT_T_VALUE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_15__*,int ,int,int) ;
 TYPE_3__* ngx_array_push (TYPE_15__*) ;
 int ngx_atoi (char*,int) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,TYPE_2__*) ;
 int ngx_http_limit_req_module ;
 int * ngx_shared_memory_add (TYPE_5__*,TYPE_2__*,int ,int *) ;
 int ngx_str_null (TYPE_2__*) ;
 scalar_t__ ngx_strcmp (char*,char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;

__attribute__((used)) static char *
ngx_http_limit_req(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_limit_req_conf_t *lrcf = conf;

    ngx_int_t burst, delay;
    ngx_str_t *value, s;
    ngx_uint_t i;
    ngx_shm_zone_t *shm_zone;
    ngx_http_limit_req_limit_t *limit, *limits;




    value = cf->args->elts;
    shm_zone = ((void*)0);
    burst = 0;
    delay = 0;

    for (i = 1; i < cf->args->nelts; i++) {

        if (ngx_strncmp(value[i].data, "zone=", 5) == 0) {

            s.len = value[i].len - 5;
            s.data = value[i].data + 5;

            shm_zone = ngx_shared_memory_add(cf, &s, 0,
                                             &ngx_http_limit_req_module);
            if (shm_zone == ((void*)0)) {
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (ngx_strncmp(value[i].data, "burst=", 6) == 0) {

            burst = ngx_atoi(value[i].data + 6, value[i].len - 6);
            if (burst <= 0) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "invalid burst value \"%V\"", &value[i]);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (ngx_strncmp(value[i].data, "delay=", 6) == 0) {

            delay = ngx_atoi(value[i].data + 6, value[i].len - 6);
            if (delay <= 0) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "invalid delay value \"%V\"", &value[i]);
                return NGX_CONF_ERROR;
            }

            continue;
        }

        if (ngx_strcmp(value[i].data, "nodelay") == 0) {
            delay = NGX_MAX_INT_T_VALUE / 1000;
            continue;
        }
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[i]);
        return NGX_CONF_ERROR;
    }

    if (shm_zone == ((void*)0)) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "\"%V\" must have \"zone\" parameter",
                           &cmd->name);
        return NGX_CONF_ERROR;
    }

    limits = lrcf->limits.elts;

    if (limits == ((void*)0)) {
        if (ngx_array_init(&lrcf->limits, cf->pool, 1,
                           sizeof(ngx_http_limit_req_limit_t))
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }
    }

    for (i = 0; i < lrcf->limits.nelts; i++) {
        if (shm_zone == limits[i].shm_zone) {
            return "is duplicate";
        }
    }

    limit = ngx_array_push(&lrcf->limits);
    if (limit == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    limit->shm_zone = shm_zone;
    limit->burst = burst * 1000;
    limit->delay = delay * 1000;




    return NGX_CONF_OK;
}
