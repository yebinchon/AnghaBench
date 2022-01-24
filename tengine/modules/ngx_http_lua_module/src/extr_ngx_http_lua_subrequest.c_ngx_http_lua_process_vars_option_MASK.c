#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {TYPE_2__ value; TYPE_1__ key; } ;
typedef  TYPE_3__ ngx_keyval_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(ngx_http_request_t *r, lua_State *L,
    int table, ngx_array_t **varsp)
{
    ngx_array_t         *vars;
    ngx_keyval_t        *var;

    if (table < 0) {
        table = FUNC3(L) + table + 1;
    }

    vars = *varsp;

    if (vars == NULL) {

        vars = FUNC10(r->pool, 4, sizeof(ngx_keyval_t));
        if (vars == NULL) {
            FUNC0("here");
            FUNC1(L, "no memory");
            return;
        }

        *varsp = vars;
    }

    FUNC7(L);
    while (FUNC5(L, table) != 0) {

        if (FUNC9(L, -2) != LUA_TSTRING) {
            FUNC1(L, "attempt to use a non-string key in the "
                       "\"vars\" option table");
            return;
        }

        if (!FUNC4(L, -1)) {
            FUNC1(L, "attempt to use bad variable value type %s",
                       FUNC2(L, -1));
            return;
        }

        var = FUNC11(vars);
        if (var == NULL) {
            FUNC0("here");
            FUNC1(L, "no memory");
            return;
        }

        var->key.data = (u_char *) FUNC8(L, -2, &var->key.len);
        var->value.data = (u_char *) FUNC8(L, -1, &var->value.len);

        FUNC6(L, 1);
    }
}