
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* ngx_str_t ;
struct TYPE_13__ {void* value; void* key; } ;
typedef TYPE_2__ ngx_keyval_t ;
struct TYPE_14__ {TYPE_1__* args; int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_15__ {char* (* post_handler ) (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;} ;
typedef TYPE_4__ ngx_conf_post_t ;
struct TYPE_16__ {int offset; TYPE_4__* post; } ;
typedef TYPE_5__ ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_12__ {void** elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_2__* ngx_array_push (int *) ;
 char* stub1 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;

char *
ngx_conf_set_keyval_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_str_t *value;
    ngx_array_t **a;
    ngx_keyval_t *kv;
    ngx_conf_post_t *post;

    a = (ngx_array_t **) (p + cmd->offset);

    if (*a == ((void*)0)) {
        *a = ngx_array_create(cf->pool, 4, sizeof(ngx_keyval_t));
        if (*a == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    kv = ngx_array_push(*a);
    if (kv == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;

    kv->key = value[1];
    kv->value = value[2];

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, kv);
    }

    return NGX_CONF_OK;
}
