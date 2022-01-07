
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* handler_conf; int handler; } ;
typedef TYPE_1__ ngx_conf_t ;
typedef int ngx_command_t ;


 char* ngx_http_lua_conf_lua_block_parse (TYPE_1__*,int *) ;
 int ngx_http_lua_init_by_lua ;

char *
ngx_http_lua_init_by_lua_block(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{
    char *rv;
    ngx_conf_t save;

    save = *cf;
    cf->handler = ngx_http_lua_init_by_lua;
    cf->handler_conf = conf;

    rv = ngx_http_lua_conf_lua_block_parse(cf, cmd);

    *cf = save;

    return rv;
}
