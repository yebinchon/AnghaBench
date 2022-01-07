
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_15__ {int len; TYPE_3__* data; } ;
struct TYPE_17__ {int co_ref; int * pool; int delay; int * co; TYPE_2__* vm_state; TYPE_1__ client_addr_text; TYPE_4__* lmcf; } ;
typedef TYPE_3__ ngx_http_lua_timer_ctx_t ;
struct TYPE_18__ {int pending_timers; int * lua; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_19__ {int log; TYPE_3__* data; int handler; } ;
typedef TYPE_5__ ngx_event_t ;
typedef int lua_State ;
struct TYPE_16__ {int count; int * vm; } ;
struct TYPE_14__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int coroutines_key ;
 int dd (char*,int) ;
 int luaL_ref (int *,int) ;
 int luaL_unref (int *,int,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int * lua_newthread (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_setfenv (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int ngx_add_timer (TYPE_5__*,int ) ;
 int * ngx_alloc (int,int ) ;
 int * ngx_create_pool (int,int ) ;
 TYPE_12__* ngx_cycle ;
 int ngx_destroy_pool (int *) ;
 int ngx_free (TYPE_5__*) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_set_globals_table (int *) ;
 int ngx_http_lua_timer_handler ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 int ngx_memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_3__* ngx_palloc (int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_timer_copy(ngx_http_lua_timer_ctx_t *old_tctx)
{
    int nargs, co_ref, i;
    u_char *p;
    lua_State *vm;
    lua_State *co;
    lua_State *L;
    ngx_event_t *ev = ((void*)0);
    ngx_http_lua_timer_ctx_t *tctx = ((void*)0);
    ngx_http_lua_main_conf_t *lmcf;


    L = old_tctx->co;

    lmcf = old_tctx->lmcf;

    vm = old_tctx->vm_state ? old_tctx->vm_state->vm : lmcf->lua;

    co = lua_newthread(vm);


    lua_createtable(co, 0, 0);



    lua_createtable(co, 0, 1);
    ngx_http_lua_get_globals_table(co);
    lua_setfield(co, -2, "__index");
    lua_setmetatable(co, -2);



    ngx_http_lua_set_globals_table(co);




    dd("stack top: %d", lua_gettop(L));

    lua_xmove(vm, L, 1);




    lua_pushvalue(L, 1);



    lua_xmove(L, co, 1);





    ngx_http_lua_get_globals_table(co);
    lua_setfenv(co, -2);




    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);



    lua_pushvalue(L, -2);



    co_ref = luaL_ref(L, -2);
    lua_pop(L, 2);



    nargs = lua_gettop(L);
    if (nargs > 1) {
        for (i = 2; i <= nargs; i++) {
            lua_pushvalue(L, i);
        }



        lua_xmove(L, co, nargs - 1);



    }

    p = ngx_alloc(sizeof(ngx_event_t) + sizeof(ngx_http_lua_timer_ctx_t),
                  ngx_cycle->log);
    if (p == ((void*)0)) {
        goto nomem;
    }

    ev = (ngx_event_t *) p;

    ngx_memzero(ev, sizeof(ngx_event_t));

    p += sizeof(ngx_event_t);

    tctx = (ngx_http_lua_timer_ctx_t *) p;

    ngx_memcpy(tctx, old_tctx, sizeof(ngx_http_lua_timer_ctx_t));

    tctx->co_ref = co_ref;
    tctx->co = co;

    tctx->pool = ngx_create_pool(128, ngx_cycle->log);
    if (tctx->pool == ((void*)0)) {
        goto nomem;
    }

    if (tctx->client_addr_text.len) {
        tctx->client_addr_text.data = ngx_palloc(tctx->pool,
                                                 tctx->client_addr_text.len);
        if (tctx->client_addr_text.data == ((void*)0)) {
            goto nomem;
        }

        ngx_memcpy(tctx->client_addr_text.data, old_tctx->client_addr_text.data,
                   tctx->client_addr_text.len);
    }

    if (tctx->vm_state) {
        tctx->vm_state->count++;
    }

    ev->handler = ngx_http_lua_timer_handler;
    ev->data = tctx;
    ev->log = ngx_cycle->log;

    lmcf->pending_timers++;

    ngx_add_timer(ev, tctx->delay);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "created next timer (co: %p delay: %M ms)", tctx->co,
                   tctx->delay);

    return NGX_OK;

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



    lua_pop(L, 1);

    return NGX_ERROR;
}
