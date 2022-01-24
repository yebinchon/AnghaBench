#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_26__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_24__ {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_23__ {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_27__ {TYPE_2__ value; TYPE_1__ key; } ;
typedef  TYPE_5__ ngx_keyval_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_28__ {int valid; size_t len; int /*<<< orphan*/ * data; scalar_t__ no_cacheable; scalar_t__ not_found; } ;
typedef  TYPE_6__ ngx_http_variable_value_t ;
struct TYPE_29__ {int flags; size_t index; int /*<<< orphan*/  data; int /*<<< orphan*/  (* set_handler ) (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_7__ ngx_http_variable_t ;
struct TYPE_30__ {TYPE_3__* connection; TYPE_6__* variables; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_http_request_t ;
struct TYPE_31__ {int /*<<< orphan*/  variables_hash; } ;
typedef  TYPE_9__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_hash_t ;
struct TYPE_22__ {scalar_t__ nelts; TYPE_5__* elts; } ;
typedef  TYPE_10__ ngx_array_t ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int NGX_HTTP_VAR_CHANGEABLE ; 
 int NGX_HTTP_VAR_INDEXED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_9__* FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_http_request_t *sr,
    ngx_array_t *extra_vars)
{
    ngx_http_core_main_conf_t   *cmcf;
    ngx_http_variable_t         *v;
    ngx_http_variable_value_t   *vv;
    u_char                      *val;
    u_char                      *p;
    ngx_uint_t                   i, hash;
    ngx_str_t                    name;
    size_t                       len;
    ngx_hash_t                  *variables_hash;
    ngx_keyval_t                *var;

    /* set any extra variables that were passed to the subrequest */

    if (extra_vars == NULL || extra_vars->nelts == 0) {
        return NGX_OK;
    }

    cmcf = FUNC3(sr, ngx_http_core_module);

    variables_hash = &cmcf->variables_hash;

    var = extra_vars->elts;

    for (i = 0; i < extra_vars->nelts; i++, var++) {
        /* copy the variable's name and value because they are allocated
         * by the lua VM */

        len = var->key.len + var->value.len;

        p = FUNC8(sr->pool, len);
        if (p == NULL) {
            return NGX_ERROR;
        }

        name.data = p;
        name.len = var->key.len;

        p = FUNC0(p, var->key.data, var->key.len);

        hash = FUNC2(name.data, name.data, name.len);

        val = p;
        len = var->value.len;

        FUNC6(p, var->value.data, len);

        v = FUNC1(variables_hash, hash, name.data, name.len);

        if (v) {
            if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
                FUNC5(NGX_LOG_ERR, sr->connection->log, 0,
                              "variable \"%V\" not changeable", &name);
                return NGX_HTTP_INTERNAL_SERVER_ERROR;
            }

            if (v->set_handler) {
                vv = FUNC7(sr->pool, sizeof(ngx_http_variable_value_t));
                if (vv == NULL) {
                    return NGX_ERROR;
                }

                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;

                v->set_handler(sr, vv, v->data);

                FUNC4(NGX_LOG_DEBUG_HTTP, sr->connection->log, 0,
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

                FUNC4(NGX_LOG_DEBUG_HTTP, sr->connection->log, 0,
                               "variable \"%V\" set to value \"%v\"",
                               &name, vv);

                continue;
            }
        }

        FUNC5(NGX_LOG_ERR, sr->connection->log, 0,
                      "variable \"%V\" cannot be assigned a value (maybe you "
                      "forgot to define it first?) ", &name);

        return NGX_ERROR;
    }

    return NGX_OK;
}