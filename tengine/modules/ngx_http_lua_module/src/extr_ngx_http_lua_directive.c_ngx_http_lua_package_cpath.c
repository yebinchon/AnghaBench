
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_8__ {scalar_t__ len; int data; } ;
struct TYPE_10__ {TYPE_2__ lua_cpath; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_11__ {TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_7__ {TYPE_3__* elts; } ;


 char* NGX_CONF_OK ;
 int dd (char*) ;

char *
ngx_http_lua_package_cpath(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_lua_main_conf_t *lmcf = conf;
    ngx_str_t *value;

    if (lmcf->lua_cpath.len != 0) {
        return "is duplicate";
    }

    dd("enter");

    value = cf->args->elts;

    lmcf->lua_cpath.len = value[1].len;
    lmcf->lua_cpath.data = value[1].data;

    return NGX_CONF_OK;
}
