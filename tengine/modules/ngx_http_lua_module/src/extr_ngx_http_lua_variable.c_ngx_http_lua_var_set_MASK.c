#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_13__ {size_t len; char* data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_14__ {int valid; int not_found; char* data; size_t len; scalar_t__ no_cacheable; } ;
typedef  TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_15__ {int flags; size_t index; int /*<<< orphan*/  data; int /*<<< orphan*/  (* set_handler ) (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ ngx_http_variable_t ;
struct TYPE_16__ {TYPE_2__* variables; int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_17__ {int /*<<< orphan*/  variables_hash; } ;
typedef  TYPE_5__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int NGX_HTTP_VAR_CHANGEABLE ; 
 int NGX_HTTP_VAR_INDEXED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,size_t) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_5__* FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,size_t) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(lua_State *L)
{
    ngx_http_variable_t         *v;
    ngx_http_variable_value_t   *vv;
    ngx_http_core_main_conf_t   *cmcf;
    u_char                      *p, *lowcase, *val;
    size_t                       len;
    ngx_str_t                    name;
    ngx_uint_t                   hash;
    ngx_http_request_t          *r;
    int                          value_type;
    const char                  *msg;

    r = FUNC13(L);
    if (r == NULL) {
        return FUNC3(L, "no request object found");
    }

    FUNC12(L, r);

    /* we skip the first argument that is the table */

    /* we read the variable name */

    if (FUNC7(L, 2) != LUA_TSTRING) {
        return FUNC3(L, "bad variable name");
    }

    p = (u_char *) FUNC6(L, 2, &len);

    lowcase = FUNC4(L, len + 1);

    hash = FUNC10(lowcase, p, len);
    lowcase[len] = '\0';

    name.len = len;
    name.data = lowcase;

    /* we read the variable new value */

    value_type = FUNC7(L, 3);
    switch (value_type) {
    case LUA_TNUMBER:
    case LUA_TSTRING:
        p = (u_char *) FUNC2(L, 3, &len);

        val = FUNC15(r->pool, len);
        if (val == NULL) {
            return FUNC3(L, "memory allocation error");
        }

        FUNC14(val, p, len);

        break;

    case LUA_TNIL:
        /* undef the variable */

        val = NULL;
        len = 0;

        break;

    default:
        msg = FUNC5(L, "string, number, or nil expected, "
                              "but got %s", FUNC8(L, value_type));
        return FUNC1(L, 1, msg);
    }

    /* we fetch the variable itself */

    cmcf = FUNC11(r, ngx_http_core_module);

    v = FUNC9(&cmcf->variables_hash, hash, name.data, name.len);

    if (v) {
        if (!(v->flags & NGX_HTTP_VAR_CHANGEABLE)) {
            return FUNC3(L, "variable \"%s\" not changeable", lowcase);
        }

        if (v->set_handler) {

            FUNC0("set variables with set_handler");

            vv = FUNC15(r->pool, sizeof(ngx_http_variable_value_t));
            if (vv == NULL) {
                return FUNC3(L, "no memory");
            }

            if (value_type == LUA_TNIL) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;
                vv->data = NULL;
                vv->len = 0;

            } else {
                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;
            }

            v->set_handler(r, vv, v->data);

            return 0;
        }

        if (v->flags & NGX_HTTP_VAR_INDEXED) {
            vv = &r->variables[v->index];

            FUNC0("set indexed variable");

            if (value_type == LUA_TNIL) {
                vv->valid = 0;
                vv->not_found = 1;
                vv->no_cacheable = 0;

                vv->data = NULL;
                vv->len = 0;

            } else {
                vv->valid = 1;
                vv->not_found = 0;
                vv->no_cacheable = 0;

                vv->data = val;
                vv->len = len;
            }

            return 0;
        }

        return FUNC3(L, "variable \"%s\" cannot be assigned a value",
                          lowcase);
    }

    /* variable not found */

    return FUNC3(L, "variable \"%s\" not found for writing; "
                      "maybe it is a built-in variable that is not changeable "
                      "or you forgot to use \"set $%s '';\" "
                      "in the config file to define it first",
                      lowcase, lowcase);
}