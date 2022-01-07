
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_22__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int u_char ;
typedef scalar_t__ ngx_socket_t ;
typedef scalar_t__ ngx_msec_t ;
struct TYPE_32__ {TYPE_5__* connection; int loc_conf; int srv_conf; int main_conf; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {int * data; scalar_t__ len; } ;
struct TYPE_33__ {int co_ref; int * pool; int * co; TYPE_3__* vm_state; TYPE_2__ client_addr_text; int * listening; TYPE_8__* lmcf; int loc_conf; int srv_conf; int main_conf; scalar_t__ premature; scalar_t__ delay; } ;
typedef TYPE_7__ ngx_http_lua_timer_ctx_t ;
struct TYPE_34__ {scalar_t__ pending_timers; scalar_t__ max_pending_timers; TYPE_20__* watcher; } ;
typedef TYPE_8__ ngx_http_lua_main_conf_t ;
struct TYPE_35__ {TYPE_3__* vm_state; } ;
typedef TYPE_9__ ngx_http_lua_ctx_t ;
typedef int ngx_http_core_main_conf_t ;
typedef int ngx_http_connection_t ;
struct TYPE_24__ {int log; TYPE_7__* data; int handler; } ;
typedef TYPE_10__ ngx_event_t ;
typedef int ngx_connection_t ;
typedef int lua_State ;
struct TYPE_25__ {scalar_t__ len; int data; } ;
struct TYPE_31__ {TYPE_1__ addr_text; int * listening; int log; } ;
struct TYPE_30__ {int handler; } ;
struct TYPE_29__ {int count; } ;
struct TYPE_27__ {int log; int ** files; } ;
struct TYPE_26__ {int idle; TYPE_8__* data; TYPE_4__* read; scalar_t__ fd; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int coroutines_key ;
 int dd (char*,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int luaL_ref (int *,int) ;
 int luaL_unref (int *,int,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_iscfunction (int *,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int * lua_newthread (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int ngx_add_timer (TYPE_10__*,scalar_t__) ;
 int * ngx_alloc (int,int ) ;
 int * ngx_create_pool (int,int ) ;
 TYPE_22__* ngx_cycle ;
 int ngx_destroy_pool (int *) ;
 scalar_t__ ngx_exiting ;
 int ngx_free (TYPE_10__*) ;
 TYPE_20__* ngx_get_connection (int ,int ) ;
 TYPE_9__* ngx_http_get_module_ctx (TYPE_6__*,int ) ;
 TYPE_8__* ngx_http_get_module_main_conf (TYPE_6__*,int ) ;
 int ngx_http_lua_abort_pending_timers ;
 int ngx_http_lua_get_globals_table (int *) ;
 int * ngx_http_lua_get_lua_vm (TYPE_6__*,TYPE_9__*) ;
 TYPE_6__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_user_coroutine_create (TYPE_6__*,int *,int *) ;
 int ngx_http_lua_set_globals_table (int *) ;
 int ngx_http_lua_timer_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,scalar_t__) ;
 int ngx_memcpy (int *,int ,scalar_t__) ;
 int ngx_memzero (TYPE_10__*,int) ;
 int * ngx_palloc (int *,scalar_t__) ;

__attribute__((used)) static int
ngx_http_lua_ngx_timer_helper(lua_State *L, int every)
{
    int nargs, co_ref;
    u_char *p;
    lua_State *vm;
    lua_State *co;
    ngx_msec_t delay;
    ngx_event_t *ev = ((void*)0);
    ngx_http_request_t *r;
    ngx_connection_t *saved_c = ((void*)0);
    ngx_http_lua_ctx_t *ctx;




    ngx_http_lua_timer_ctx_t *tctx = ((void*)0);
    ngx_http_lua_main_conf_t *lmcf;




    nargs = lua_gettop(L);
    if (nargs < 2) {
        return luaL_error(L, "expecting at least 2 arguments but got %d",
                          nargs);
    }

    delay = (ngx_msec_t) (luaL_checknumber(L, 1) * 1000);

    if (every && delay == 0) {
        return luaL_error(L, "delay cannot be zero");
    }

    luaL_argcheck(L, lua_isfunction(L, 2) && !lua_iscfunction(L, 2), 2,
                  "Lua function expected");

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (ngx_exiting && delay > 0) {
        lua_pushnil(L);
        lua_pushliteral(L, "process exiting");
        return 2;
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    if (lmcf->pending_timers >= lmcf->max_pending_timers) {
        lua_pushnil(L);
        lua_pushliteral(L, "too many pending timers");
        return 2;
    }

    if (lmcf->watcher == ((void*)0)) {


        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua creating fake watcher connection");

        if (ngx_cycle->files) {
            saved_c = ngx_cycle->files[0];
        }

        lmcf->watcher = ngx_get_connection(0, ngx_cycle->log);

        if (ngx_cycle->files) {
            ngx_cycle->files[0] = saved_c;
        }

        if (lmcf->watcher == ((void*)0)) {
            return luaL_error(L, "no memory");
        }


        lmcf->watcher->fd = (ngx_socket_t) -2;

        lmcf->watcher->idle = 1;
        lmcf->watcher->read->handler = ngx_http_lua_abort_pending_timers;
        lmcf->watcher->data = lmcf;
    }

    vm = ngx_http_lua_get_lua_vm(r, ctx);

    co = lua_newthread(vm);



    ngx_http_lua_probe_user_coroutine_create(r, L, co);


    lua_createtable(co, 0, 0);



    lua_createtable(co, 0, 1);
    ngx_http_lua_get_globals_table(co);
    lua_setfield(co, -2, "__index");
    lua_setmetatable(co, -2);



    ngx_http_lua_set_globals_table(co);




    dd("stack top: %d", lua_gettop(L));

    lua_xmove(vm, L, 1);




    lua_pushvalue(L, 2);



    lua_xmove(L, co, 1);





    ngx_http_lua_get_globals_table(co);
    lua_setfenv(co, -2);




    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);



    lua_pushvalue(L, -2);



    co_ref = luaL_ref(L, -2);
    lua_pop(L, 1);



    if (nargs > 2) {
        lua_pop(L, 1);
        lua_xmove(L, co, nargs - 2);


    }

    p = ngx_alloc(sizeof(ngx_event_t) + sizeof(ngx_http_lua_timer_ctx_t),
                  r->connection->log);
    if (p == ((void*)0)) {
        goto nomem;
    }

    ev = (ngx_event_t *) p;

    ngx_memzero(ev, sizeof(ngx_event_t));

    p += sizeof(ngx_event_t);

    tctx = (ngx_http_lua_timer_ctx_t *) p;

    tctx->delay = every ? delay : 0;

    tctx->premature = 0;
    tctx->co_ref = co_ref;
    tctx->co = co;
    tctx->main_conf = r->main_conf;
    tctx->srv_conf = r->srv_conf;
    tctx->loc_conf = r->loc_conf;
    tctx->lmcf = lmcf;

    tctx->pool = ngx_create_pool(128, ngx_cycle->log);
    if (tctx->pool == ((void*)0)) {
        goto nomem;
    }

    if (r->connection) {
        tctx->listening = r->connection->listening;

    } else {
        tctx->listening = ((void*)0);
    }

    if (r->connection->addr_text.len) {
        tctx->client_addr_text.data = ngx_palloc(tctx->pool,
                                                 r->connection->addr_text.len);
        if (tctx->client_addr_text.data == ((void*)0)) {
            goto nomem;
        }

        ngx_memcpy(tctx->client_addr_text.data, r->connection->addr_text.data,
                   r->connection->addr_text.len);
        tctx->client_addr_text.len = r->connection->addr_text.len;

    } else {
        tctx->client_addr_text.len = 0;
        tctx->client_addr_text.data = ((void*)0);
    }

    if (ctx && ctx->vm_state) {
        tctx->vm_state = ctx->vm_state;
        tctx->vm_state->count++;

    } else {
        tctx->vm_state = ((void*)0);
    }

    ev->handler = ngx_http_lua_timer_handler;
    ev->data = tctx;
    ev->log = ngx_cycle->log;

    lmcf->pending_timers++;

    ngx_add_timer(ev, delay);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "created timer (co: %p delay: %M ms)", tctx->co, delay);

    lua_pushinteger(L, 1);
    return 1;

nomem:

    if (tctx && tctx->pool) {
        ngx_destroy_pool(tctx->pool);
    }

    if (ev) {
        ngx_free(ev);
    }

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);
    luaL_unref(L, -1, co_ref);

    return luaL_error(L, "no memory");
}
