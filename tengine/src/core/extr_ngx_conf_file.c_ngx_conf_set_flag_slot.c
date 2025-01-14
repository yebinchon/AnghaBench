
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_flag_t ;
struct TYPE_15__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_16__ {char* (* post_handler ) (TYPE_4__*,TYPE_5__*,int*) ;} ;
typedef TYPE_5__ ngx_conf_post_t ;
struct TYPE_13__ {int data; } ;
struct TYPE_17__ {int offset; TYPE_5__* post; TYPE_2__ name; } ;
typedef TYPE_6__ ngx_command_t ;
struct TYPE_12__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_CONF_UNSET ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,int ,int ) ;
 scalar_t__ ngx_strcasecmp (int ,int *) ;
 char* stub1 (TYPE_4__*,TYPE_5__*,int*) ;

char *
ngx_conf_set_flag_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_str_t *value;
    ngx_flag_t *fp;
    ngx_conf_post_t *post;

    fp = (ngx_flag_t *) (p + cmd->offset);

    if (*fp != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    if (ngx_strcasecmp(value[1].data, (u_char *) "on") == 0) {
        *fp = 1;

    } else if (ngx_strcasecmp(value[1].data, (u_char *) "off") == 0) {
        *fp = 0;

    } else {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                     "invalid value \"%s\" in \"%s\" directive, "
                     "it must be \"on\" or \"off\"",
                     value[1].data, cmd->name.data);
        return NGX_CONF_ERROR;
    }

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, fp);
    }

    return NGX_CONF_OK;
}
