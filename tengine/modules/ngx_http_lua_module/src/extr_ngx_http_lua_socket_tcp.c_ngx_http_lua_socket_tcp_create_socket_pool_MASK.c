#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  int ngx_int_t ;
struct TYPE_16__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int backlog; int size; int /*<<< orphan*/  free; scalar_t__ key; int /*<<< orphan*/  cache; int /*<<< orphan*/  wait_connect_op; int /*<<< orphan*/  cache_connect_op; int /*<<< orphan*/  lua_vm; scalar_t__ connections; } ;
typedef  TYPE_4__ ngx_http_lua_socket_pool_t ;
struct TYPE_18__ {TYPE_4__* socket_pool; int /*<<< orphan*/  queue; } ;
typedef  TYPE_5__ ngx_http_lua_socket_pool_item_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pool_udata_metatable_key ; 

__attribute__((used)) static void
FUNC18(lua_State *L, ngx_http_request_t *r,
    ngx_str_t key, ngx_int_t pool_size, ngx_int_t backlog,
    ngx_http_lua_socket_pool_t **spool)
{
    u_char                              *p;
    size_t                               size, key_len;
    ngx_int_t                            i;
    ngx_http_lua_socket_pool_t          *sp;
    ngx_http_lua_socket_pool_item_t     *items;

    FUNC15(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket connection pool size: %i, backlog: %i",
                   pool_size, backlog);

    key_len = FUNC8(key.len + 1, sizeof(void *));

    size = sizeof(ngx_http_lua_socket_pool_t) - 1 + key_len
           + sizeof(ngx_http_lua_socket_pool_item_t) * pool_size;

    /* before calling this function, the Lua stack is:
     * -1 key
     * -2 pools
     */
    sp = FUNC2(L, size);
    if (sp == NULL) {
        FUNC1(L, "no memory");
        return;
    }

    FUNC4(L, FUNC13(
                          pool_udata_metatable_key));
    FUNC5(L, LUA_REGISTRYINDEX);
    FUNC7(L, -2);

    FUNC14(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket keepalive create connection pool for key"
                   " \"%V\"", &key);

    /* a new socket pool with metatable is push to the stack, so now we have:
     * -1 sp
     * -2 key
     * -3 pools
     *
     * it is time to set pools[key] to sp.
     */
    FUNC6(L, -3);

    /* clean up the stack for consistency's sake */
    FUNC3(L, 1);

    sp->backlog = backlog;
    sp->size = pool_size;
    sp->connections = 0;
    sp->lua_vm = FUNC12(r, NULL);

    FUNC16(&sp->cache_connect_op);
    FUNC16(&sp->wait_connect_op);
    FUNC16(&sp->cache);
    FUNC16(&sp->free);

    p = FUNC10(sp->key, key.data, key.len);
    *p++ = '\0';

    items = (ngx_http_lua_socket_pool_item_t *) (sp->key + key_len);

    FUNC0("items: %p", items);

    FUNC11((void *) items == FUNC9(items, sizeof(void *)));

    for (i = 0; i < pool_size; i++) {
        FUNC17(&sp->free, &items[i].queue);
        items[i].socket_pool = sp;
    }

    *spool = sp;
}