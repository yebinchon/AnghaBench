
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * resolver; } ;
typedef TYPE_2__ ngx_stream_core_srv_conf_t ;
typedef int ngx_str_t ;
struct TYPE_8__ {TYPE_1__* args; } ;
typedef TYPE_3__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_6__ {scalar_t__ nelts; int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * ngx_resolver_create (TYPE_3__*,int *,scalar_t__) ;

__attribute__((used)) static char *
ngx_stream_core_resolver(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_core_srv_conf_t *cscf = conf;

    ngx_str_t *value;

    if (cscf->resolver) {
        return "is duplicate";
    }

    value = cf->args->elts;

    cscf->resolver = ngx_resolver_create(cf, &value[1], cf->args->nelts - 1);
    if (cscf->resolver == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
