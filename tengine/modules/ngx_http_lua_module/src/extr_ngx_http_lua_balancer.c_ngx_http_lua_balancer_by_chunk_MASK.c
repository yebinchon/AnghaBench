#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_lua_traceback ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC15(lua_State *L, ngx_http_request_t *r)
{
    u_char                  *err_msg;
    size_t                   len;
    ngx_int_t                rc;

    /* init nginx context in Lua VM */
    FUNC13(L, r);

#ifndef OPENRESTY_LUAJIT
    FUNC11(L, 0 /* narr */, 1 /* nrec */);

    /*  {{{ make new env inheriting main thread's globals table */
    FUNC1(L, 0, 1 /* nrec */);   /* the metatable for the new env */
    FUNC12(L);
    FUNC7(L, -2, "__index");
    FUNC8(L, -2);    /*  setmetatable({}, {__index = _G}) */
    /*  }}} */

    FUNC6(L, -2);    /*  set new running env for the code closure */
#endif /* OPENRESTY_LUAJIT */

    FUNC4(L, ngx_http_lua_traceback);
    FUNC2(L, 1);  /* put it under chunk and args */

    /*  protected call user code */
    rc = FUNC3(L, 0, 1, 1);

    FUNC5(L, 1);  /* remove traceback function */

    FUNC0("rc == %d", (int) rc);

    if (rc != 0) {
        /*  error occurred when running loaded code */
        err_msg = (u_char *) FUNC10(L, -1, &len);

        if (err_msg == NULL) {
            err_msg = (u_char *) "unknown reason";
            len = sizeof("unknown reason") - 1;
        }

        FUNC14(NGX_LOG_ERR, r->connection->log, 0,
                      "failed to run balancer_by_lua*: %*s", len, err_msg);

        FUNC9(L, 0); /*  clear remaining elems on stack */

        return NGX_ERROR;
    }

    FUNC9(L, 0); /*  clear remaining elems on stack */
    return rc;
}