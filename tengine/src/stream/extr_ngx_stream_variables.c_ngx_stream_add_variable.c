
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_18__ ;
typedef struct TYPE_21__ TYPE_17__ ;


typedef int ngx_uint_t ;
struct TYPE_22__ {scalar_t__ len; int * data; } ;
struct TYPE_25__ {int flags; TYPE_18__ name; scalar_t__ index; scalar_t__ data; int * get_handler; int * set_handler; } ;
typedef TYPE_3__ ngx_stream_variable_t ;
struct TYPE_26__ {TYPE_17__* variables_keys; } ;
typedef TYPE_4__ ngx_stream_core_main_conf_t ;
struct TYPE_27__ {scalar_t__ len; int data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_24__ {scalar_t__ len; int data; } ;
struct TYPE_28__ {TYPE_3__* value; TYPE_2__ key; } ;
typedef TYPE_6__ ngx_hash_key_t ;
struct TYPE_29__ {int pool; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_23__ {int nelts; TYPE_6__* elts; } ;
struct TYPE_21__ {TYPE_1__ keys; } ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_STREAM_VAR_CHANGEABLE ;
 int NGX_STREAM_VAR_PREFIX ;
 int NGX_STREAM_VAR_WEAK ;
 int ngx_conf_log_error (int ,TYPE_7__*,int ,char*,...) ;
 scalar_t__ ngx_hash_add_key (TYPE_17__*,TYPE_18__*,TYPE_3__*,int ) ;
 TYPE_3__* ngx_palloc (int ,int) ;
 int * ngx_pnalloc (int ,scalar_t__) ;
 TYPE_3__* ngx_stream_add_prefix_variable (TYPE_7__*,TYPE_5__*,int) ;
 TYPE_4__* ngx_stream_conf_get_module_main_conf (TYPE_7__*,int ) ;
 int ngx_stream_core_module ;
 int ngx_strlow (int *,int ,scalar_t__) ;
 scalar_t__ ngx_strncasecmp (int ,int ,scalar_t__) ;

ngx_stream_variable_t *
ngx_stream_add_variable(ngx_conf_t *cf, ngx_str_t *name, ngx_uint_t flags)
{
    ngx_int_t rc;
    ngx_uint_t i;
    ngx_hash_key_t *key;
    ngx_stream_variable_t *v;
    ngx_stream_core_main_conf_t *cmcf;

    if (name->len == 0) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid variable name \"$\"");
        return ((void*)0);
    }

    if (flags & NGX_STREAM_VAR_PREFIX) {
        return ngx_stream_add_prefix_variable(cf, name, flags);
    }

    cmcf = ngx_stream_conf_get_module_main_conf(cf, ngx_stream_core_module);

    key = cmcf->variables_keys->keys.elts;
    for (i = 0; i < cmcf->variables_keys->keys.nelts; i++) {
        if (name->len != key[i].key.len
            || ngx_strncasecmp(name->data, key[i].key.data, name->len) != 0)
        {
            continue;
        }

        v = key[i].value;

        if (!(v->flags & NGX_STREAM_VAR_CHANGEABLE)) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "the duplicate \"%V\" variable", name);
            return ((void*)0);
        }

        if (!(flags & NGX_STREAM_VAR_WEAK)) {
            v->flags &= ~NGX_STREAM_VAR_WEAK;
        }

        return v;
    }

    v = ngx_palloc(cf->pool, sizeof(ngx_stream_variable_t));
    if (v == ((void*)0)) {
        return ((void*)0);
    }

    v->name.len = name->len;
    v->name.data = ngx_pnalloc(cf->pool, name->len);
    if (v->name.data == ((void*)0)) {
        return ((void*)0);
    }

    ngx_strlow(v->name.data, name->data, name->len);

    v->set_handler = ((void*)0);
    v->get_handler = ((void*)0);
    v->data = 0;
    v->flags = flags;
    v->index = 0;

    rc = ngx_hash_add_key(cmcf->variables_keys, &v->name, v, 0);

    if (rc == NGX_ERROR) {
        return ((void*)0);
    }

    if (rc == NGX_BUSY) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "conflicting variable name \"%V\"", name);
        return ((void*)0);
    }

    return v;
}
