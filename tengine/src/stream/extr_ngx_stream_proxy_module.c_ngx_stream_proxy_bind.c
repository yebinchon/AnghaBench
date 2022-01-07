
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_20__ {int transparent; TYPE_13__* addr; TYPE_5__* value; } ;
typedef TYPE_3__ ngx_stream_upstream_local_t ;
struct TYPE_21__ {TYPE_3__* local; } ;
typedef TYPE_4__ ngx_stream_proxy_srv_conf_t ;
struct TYPE_22__ {scalar_t__ lengths; } ;
typedef TYPE_5__ ngx_stream_complex_value_t ;
struct TYPE_23__ {TYPE_5__* complex_value; TYPE_7__* value; TYPE_9__* cf; } ;
typedef TYPE_6__ ngx_stream_compile_complex_value_t ;
struct TYPE_24__ {int data; int len; } ;
typedef TYPE_7__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_25__ {int transparent; } ;
typedef TYPE_8__ ngx_core_conf_t ;
struct TYPE_26__ {TYPE_2__* cycle; TYPE_1__* args; int pool; } ;
typedef TYPE_9__ ngx_conf_t ;
typedef int ngx_command_t ;
typedef int ngx_addr_t ;
struct TYPE_19__ {int conf_ctx; } ;
struct TYPE_18__ {int nelts; TYPE_7__* elts; } ;
struct TYPE_17__ {TYPE_7__ name; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 TYPE_3__* NGX_CONF_UNSET_PTR ;

 int NGX_LOG_EMERG ;

 int ngx_conf_log_error (int ,TYPE_9__*,int ,char*,...) ;
 int ngx_core_module ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_memzero (TYPE_6__*,int) ;
 void* ngx_palloc (int ,int) ;
 int ngx_parse_addr_port (int ,TYPE_13__*,int ,int ) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;
 scalar_t__ ngx_stream_compile_complex_value (TYPE_6__*) ;

__attribute__((used)) static char *
ngx_stream_proxy_bind(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_proxy_srv_conf_t *pscf = conf;

    ngx_int_t rc;
    ngx_str_t *value;
    ngx_stream_complex_value_t cv;
    ngx_stream_upstream_local_t *local;
    ngx_stream_compile_complex_value_t ccv;

    if (pscf->local != NGX_CONF_UNSET_PTR) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (cf->args->nelts == 2 && ngx_strcmp(value[1].data, "off") == 0) {
        pscf->local = ((void*)0);
        return NGX_CONF_OK;
    }

    ngx_memzero(&ccv, sizeof(ngx_stream_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &value[1];
    ccv.complex_value = &cv;

    if (ngx_stream_compile_complex_value(&ccv) != 128) {
        return NGX_CONF_ERROR;
    }

    local = ngx_pcalloc(cf->pool, sizeof(ngx_stream_upstream_local_t));
    if (local == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    pscf->local = local;

    if (cv.lengths) {
        local->value = ngx_palloc(cf->pool, sizeof(ngx_stream_complex_value_t));
        if (local->value == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        *local->value = cv;

    } else {
        local->addr = ngx_palloc(cf->pool, sizeof(ngx_addr_t));
        if (local->addr == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        rc = ngx_parse_addr_port(cf->pool, local->addr, value[1].data,
                                 value[1].len);

        switch (rc) {
        case 128:
            local->addr->name = value[1];
            break;

        case 129:
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid address \"%V\"", &value[1]);


        default:
            return NGX_CONF_ERROR;
        }
    }

    if (cf->args->nelts > 2) {
        if (ngx_strcmp(value[2].data, "transparent") == 0) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "transparent proxying is not supported "
                               "on this platform, ignored");

        } else {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid parameter \"%V\"", &value[2]);
            return NGX_CONF_ERROR;
        }
    }

    return NGX_CONF_OK;
}
