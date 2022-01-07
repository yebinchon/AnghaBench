
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_flag_t ;
typedef int ngx_conf_t ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ ngx_command_t ;


 char* NGX_CONF_OK ;
 int NGX_LOG_ALERT ;
 int ngx_conf_log_error (int ,int *,int ,char*) ;
 char* ngx_conf_set_flag_slot (int *,TYPE_1__*,void*) ;

char *
ngx_http_lua_code_cache(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;
    ngx_flag_t *fp;
    char *ret;

    ret = ngx_conf_set_flag_slot(cf, cmd, conf);
    if (ret != NGX_CONF_OK) {
        return ret;
    }

    fp = (ngx_flag_t *) (p + cmd->offset);

    if (!*fp) {
        ngx_conf_log_error(NGX_LOG_ALERT, cf, 0,
                           "lua_code_cache is off; this will hurt "
                           "performance");
    }

    return NGX_CONF_OK;
}
