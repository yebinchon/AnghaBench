
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ngx_thread_pool_t ;
struct TYPE_15__ {char* data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_16__ {scalar_t__ aio; int * thread_pool; TYPE_4__* thread_pool_value; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_17__ {int * lengths; } ;
typedef TYPE_4__ ngx_http_complex_value_t ;
struct TYPE_18__ {TYPE_4__* complex_value; TYPE_2__* value; TYPE_6__* cf; } ;
typedef TYPE_5__ ngx_http_compile_complex_value_t ;
struct TYPE_19__ {int pool; TYPE_1__* args; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_14__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_HTTP_AIO_OFF ;
 void* NGX_HTTP_AIO_ON ;
 scalar_t__ NGX_HTTP_AIO_THREADS ;
 int NGX_LOG_EMERG ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_5__*) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_4__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_strcmp (char*,char*) ;
 scalar_t__ ngx_strncmp (char*,char*,int) ;
 int * ngx_thread_pool_add (TYPE_6__*,TYPE_2__*) ;

__attribute__((used)) static char *
ngx_http_core_set_aio(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf = conf;

    ngx_str_t *value;

    if (clcf->aio != NGX_CONF_UNSET) {
        return "is duplicate";
    }






    value = cf->args->elts;

    if (ngx_strcmp(value[1].data, "off") == 0) {
        clcf->aio = NGX_HTTP_AIO_OFF;
        return NGX_CONF_OK;
    }

    if (ngx_strcmp(value[1].data, "on") == 0) {




        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "\"aio on\" "
                           "is unsupported on this platform");
        return NGX_CONF_ERROR;

    }
    if (ngx_strncmp(value[1].data, "threads", 7) == 0
        && (value[1].len == 7 || value[1].data[7] == '='))
    {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "\"aio threads\" "
                           "is unsupported on this platform");
        return NGX_CONF_ERROR;

    }

    return "invalid value";
}
