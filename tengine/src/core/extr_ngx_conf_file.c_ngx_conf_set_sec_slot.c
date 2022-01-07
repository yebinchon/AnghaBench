
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int ngx_str_t ;
struct TYPE_10__ {TYPE_1__* args; } ;
typedef TYPE_2__ ngx_conf_t ;
struct TYPE_11__ {char* (* post_handler ) (TYPE_2__*,TYPE_3__*,scalar_t__*) ;} ;
typedef TYPE_3__ ngx_conf_post_t ;
struct TYPE_12__ {int offset; TYPE_3__* post; } ;
typedef TYPE_4__ ngx_command_t ;
struct TYPE_9__ {int * elts; } ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ ngx_parse_time (int *,int) ;
 char* stub1 (TYPE_2__*,TYPE_3__*,scalar_t__*) ;

char *
ngx_conf_set_sec_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    time_t *sp;
    ngx_str_t *value;
    ngx_conf_post_t *post;


    sp = (time_t *) (p + cmd->offset);
    if (*sp != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;

    *sp = ngx_parse_time(&value[1], 1);
    if (*sp == (time_t) NGX_ERROR) {
        return "invalid value";
    }

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, sp);
    }

    return NGX_CONF_OK;
}
