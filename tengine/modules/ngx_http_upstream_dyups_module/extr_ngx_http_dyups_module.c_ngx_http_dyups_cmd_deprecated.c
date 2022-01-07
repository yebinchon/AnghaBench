
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_conf_t ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ ngx_command_t ;


 char* NGX_CONF_OK ;
 int NGX_LOG_WARN ;
 int ngx_conf_log_error (int ,int *,int ,char*,int *) ;

__attribute__((used)) static char *
ngx_http_dyups_cmd_deprecated(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_conf_log_error(NGX_LOG_WARN, cf, 0,
                       "invalid directive \"%V\" of ngx_http_dyups_module, "
                       "it has been deprecated", &cmd->name);

    return NGX_CONF_OK;
}
