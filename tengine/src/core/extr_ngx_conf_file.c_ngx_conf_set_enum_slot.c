
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_13__ {TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
struct TYPE_14__ {scalar_t__ value; TYPE_2__ name; } ;
typedef TYPE_5__ ngx_conf_enum_t ;
struct TYPE_15__ {int offset; TYPE_5__* post; } ;
typedef TYPE_6__ ngx_command_t ;
struct TYPE_10__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET_UINT ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,int ) ;
 scalar_t__ ngx_strcasecmp (int ,int ) ;

char *
ngx_conf_set_enum_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_uint_t *np, i;
    ngx_str_t *value;
    ngx_conf_enum_t *e;

    np = (ngx_uint_t *) (p + cmd->offset);

    if (*np != NGX_CONF_UNSET_UINT) {
        return "is duplicate";
    }

    value = cf->args->elts;
    e = cmd->post;

    for (i = 0; e[i].name.len != 0; i++) {
        if (e[i].name.len != value[1].len
            || ngx_strcasecmp(e[i].name.data, value[1].data) != 0)
        {
            continue;
        }

        *np = e[i].value;

        return NGX_CONF_OK;
    }

    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "invalid value \"%s\"", value[1].data);

    return NGX_CONF_ERROR;
}
