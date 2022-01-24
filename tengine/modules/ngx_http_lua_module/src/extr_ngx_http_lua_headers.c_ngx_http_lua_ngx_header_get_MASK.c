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
typedef  char u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_5__ {char* data; size_t len; } ;
typedef  TYPE_1__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_6__ {scalar_t__ transform_underscores_in_resp_headers; } ;
typedef  TYPE_2__ ngx_http_lua_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC10(lua_State *L)
{
    ngx_http_request_t          *r;
    u_char                      *p, c;
    ngx_str_t                    key;
    ngx_uint_t                   i;
    size_t                       len;
    ngx_http_lua_loc_conf_t     *llcf;
    ngx_http_lua_ctx_t          *ctx;

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    ctx = FUNC5(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no ctx found");
    }

    FUNC7(L, r);

    /* we skip the first argument that is the table */
    p = (u_char *) FUNC1(L, 2, &len);

    FUNC0("key: %.*s, len %d", (int) len, p, (int) len);

    llcf = FUNC6(r, ngx_http_lua_module);
    if (llcf->transform_underscores_in_resp_headers
        && FUNC4(p, '_', len) != NULL)
    {
        key.data = (u_char *) FUNC3(L, len);
        if (key.data == NULL) {
            return FUNC2(L, "no memory");
        }

        /* replace "_" with "-" */
        for (i = 0; i < len; i++) {
            c = p[i];
            if (c == '_') {
                c = '-';
            }
            key.data[i] = c;
        }

    } else {
        key.data = p;
    }

    key.len = len;

    return FUNC8(L, r, ctx, &key);
}