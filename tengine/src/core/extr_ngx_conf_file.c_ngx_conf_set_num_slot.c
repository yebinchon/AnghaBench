
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {TYPE_1__* args; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_13__ {char* (* post_handler ) (TYPE_3__*,TYPE_4__*,scalar_t__*) ;} ;
typedef TYPE_4__ ngx_conf_post_t ;
struct TYPE_14__ {int offset; TYPE_4__* post; } ;
typedef TYPE_5__ ngx_command_t ;
struct TYPE_10__ {TYPE_2__* elts; } ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ ngx_atoi (int ,int ) ;
 char* stub1 (TYPE_3__*,TYPE_4__*,scalar_t__*) ;

char *
ngx_conf_set_num_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_int_t *np;
    ngx_str_t *value;
    ngx_conf_post_t *post;


    np = (ngx_int_t *) (p + cmd->offset);

    if (*np != NGX_CONF_UNSET) {
        return "is duplicate";
    }

    value = cf->args->elts;
    *np = ngx_atoi(value[1].data, value[1].len);
    if (*np == NGX_ERROR) {
        return "invalid number";
    }

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, np);
    }

    return NGX_CONF_OK;
}
