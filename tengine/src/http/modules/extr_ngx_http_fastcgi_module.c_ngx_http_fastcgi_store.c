
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_14__ {int complete_lengths; int complete_values; int variables; int * values; int * lengths; TYPE_3__* source; TYPE_6__* cf; } ;
typedef TYPE_4__ ngx_http_script_compile_t ;
struct TYPE_12__ {int store; scalar_t__ cache; int store_values; int store_lengths; } ;
struct TYPE_15__ {TYPE_2__ upstream; } ;
typedef TYPE_5__ ngx_http_fastcgi_loc_conf_t ;
struct TYPE_16__ {TYPE_1__* args; } ;
typedef TYPE_6__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_11__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_CONF_UNSET ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_script_compile (TYPE_4__*) ;
 int ngx_http_script_variables_count (TYPE_3__*) ;
 int ngx_memzero (TYPE_4__*,int) ;
 scalar_t__ ngx_strcmp (int ,char*) ;

__attribute__((used)) static char *
ngx_http_fastcgi_store(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_fastcgi_loc_conf_t *flcf = conf;

    ngx_str_t *value;
    ngx_http_script_compile_t sc;

    if (flcf->upstream.store != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (ngx_strcmp(value[1].data, "off") == 0) {
        flcf->upstream.store = 0;
        return NGX_CONF_OK;
    }







    flcf->upstream.store = 1;

    if (ngx_strcmp(value[1].data, "on") == 0) {
        return NGX_CONF_OK;
    }


    value[1].len++;

    ngx_memzero(&sc, sizeof(ngx_http_script_compile_t));

    sc.cf = cf;
    sc.source = &value[1];
    sc.lengths = &flcf->upstream.store_lengths;
    sc.values = &flcf->upstream.store_values;
    sc.variables = ngx_http_script_variables_count(&value[1]);
    sc.complete_lengths = 1;
    sc.complete_values = 1;

    if (ngx_http_script_compile(&sc) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}
