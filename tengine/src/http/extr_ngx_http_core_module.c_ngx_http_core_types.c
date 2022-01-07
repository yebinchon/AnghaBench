
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * types; } ;
typedef TYPE_1__ ngx_http_core_loc_conf_t ;
typedef int ngx_hash_key_t ;
struct TYPE_6__ {void* handler_conf; int handler; int pool; } ;
typedef TYPE_2__ ngx_conf_t ;
typedef int ngx_command_t ;


 char* NGX_CONF_ERROR ;
 int * ngx_array_create (int ,int,int) ;
 char* ngx_conf_parse (TYPE_2__*,int *) ;
 int ngx_http_core_type ;

__attribute__((used)) static char *
ngx_http_core_types(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf = conf;

    char *rv;
    ngx_conf_t save;

    if (clcf->types == ((void*)0)) {
        clcf->types = ngx_array_create(cf->pool, 64, sizeof(ngx_hash_key_t));
        if (clcf->types == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    save = *cf;
    cf->handler = ngx_http_core_type;
    cf->handler_conf = conf;

    rv = ngx_conf_parse(cf, ((void*)0));

    *cf = save;

    return rv;
}
