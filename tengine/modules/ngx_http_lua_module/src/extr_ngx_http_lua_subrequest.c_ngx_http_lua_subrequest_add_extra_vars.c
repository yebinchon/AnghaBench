
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_26__ {size_t len; int * data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_24__ {size_t len; int data; } ;
struct TYPE_23__ {size_t len; int data; } ;
struct TYPE_27__ {TYPE_2__ value; TYPE_1__ key; } ;
typedef TYPE_5__ ngx_keyval_t ;
typedef int ngx_int_t ;
struct TYPE_28__ {int valid; size_t len; int * data; scalar_t__ no_cacheable; scalar_t__ not_found; } ;
typedef TYPE_6__ ngx_http_variable_value_t ;
struct TYPE_29__ {int flags; size_t index; int data; int (* set_handler ) (TYPE_8__*,TYPE_6__*,int ) ;} ;
typedef TYPE_7__ ngx_http_variable_t ;
struct TYPE_30__ {TYPE_3__* connection; TYPE_6__* variables; int pool; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_31__ {int variables_hash; } ;
typedef TYPE_9__ ngx_http_core_main_conf_t ;
typedef int ngx_hash_t ;
struct TYPE_22__ {scalar_t__ nelts; TYPE_5__* elts; } ;
typedef TYPE_10__ ngx_array_t ;
struct TYPE_25__ {int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_VAR_CHANGEABLE ;
 int NGX_HTTP_VAR_INDEXED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int * ngx_copy (int *,int ,size_t) ;
 TYPE_7__* ngx_hash_find (int *,scalar_t__,int *,size_t) ;
 scalar_t__ ngx_hash_strlow (int *,int *,size_t) ;
 int ngx_http_core_module ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_8__*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_4__*,TYPE_6__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_memcpy (int *,int ,size_t) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 int * ngx_pnalloc (int ,size_t) ;
 int stub1 (TYPE_8__*,TYPE_6__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_subrequest_add_extra_vars(ngx_http_request_t *sr,
    ngx_array_t *extra_vars)
{
    ngx_http_core_main_conf_t *cmcf;
    ngx_http_variable_t *v;
    ngx_http_variable_value_t *vv;
    u_char *val;
    u_char *p;
    ngx_uint_t i, hash;
    ngx_str_t name;
    size_t len;
    ngx_hash_t *variables_hash;
    ngx_keyval_t *var;



    if (extra_vars == ((void*)0) || extra_vars->nelts == 0) {
        return NGX_OK;
    }

    cmcf = ngx_http_get_module_main_conf(sr, ngx_http_core_module);

    variables_hash = &cmcf->variables_hash;

    var = extra_vars->elts;

    for (i = 0; i < extra_vars->nelts; i++, var++) {



        len = var->key.len + var->value.len;

        p = ngx_pnalloc(sr->pool, len);
        if (p == ((void*)0)) {
            return NGX_ERROR;
        }

        name.data = p;
        name.len = var->key.len;

        p = ngx_copy(p, var->key.data, var->key.len);

        hash = ngx_hash_strlow(name.data, name.data, name.len);

        val = p;
        len = var->value.len;

        ngx_memcpy(p, var->value.data, len);

        v = ngx_hash_find(variables_hash, hash, name.data, name.len);

        if (v) {
            if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
                ngx_log_error(NGX_LOG_ERR, sr->connection->log, 0,
                              "variable \"%V\" not changeable", &name);
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            if (v->set_handler) {
                vv = ngx_palloc(sr->pool, sizeof(ngx_http_variable_value_t));
                if (vv == ((void*)0)) {
                    return NGX_ERROR;
                }

                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;

                v->set_handler(sr, vv, v->data);

                ngx_log_debug2(NGX_LOG_DEBUG_HTTP, sr->connection->log, 0,
                               "variable \"%V\" set to value \"%v\"", &name,
                               vv);

                continue;
            }

            if (v->flags & NGX_HTTP_VAR_INDEXED) {
                vv = &sr->variables[v->index];

                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;

                ngx_log_debug2(NGX_LOG_DEBUG_HTTP, sr->connection->log, 0,
                               "variable \"%V\" set to value \"%v\"",
                               &name, vv);

                continue;
            }
        }

        ngx_log_error(NGX_LOG_ERR, sr->connection->log, 0,
                      "variable \"%V\" cannot be assigned a value (maybe you "
                      "forgot to define it first?) ", &name);

        return NGX_ERROR;
    }

    return NGX_OK;
}
