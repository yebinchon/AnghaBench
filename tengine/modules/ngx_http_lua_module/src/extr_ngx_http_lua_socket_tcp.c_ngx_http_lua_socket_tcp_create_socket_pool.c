
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_15__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int backlog; int size; int free; scalar_t__ key; int cache; int wait_connect_op; int cache_connect_op; int lua_vm; scalar_t__ connections; } ;
typedef TYPE_4__ ngx_http_lua_socket_pool_t ;
struct TYPE_18__ {TYPE_4__* socket_pool; int queue; } ;
typedef TYPE_5__ ngx_http_lua_socket_pool_item_t ;
typedef int lua_State ;
struct TYPE_14__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,TYPE_5__*) ;
 int luaL_error (int *,char*) ;
 TYPE_4__* lua_newuserdata (int *,size_t) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int) ;
 int lua_setmetatable (int *,int) ;
 size_t ngx_align (int ,int) ;
 void* ngx_align_ptr (TYPE_5__*,int) ;
 int * ngx_copy (scalar_t__,int ,int ) ;
 int ngx_http_lua_assert (int) ;
 int ngx_http_lua_get_lua_vm (TYPE_3__*,int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_queue_init (int *) ;
 int ngx_queue_insert_head (int *,int *) ;
 int pool_udata_metatable_key ;

__attribute__((used)) static void
ngx_http_lua_socket_tcp_create_socket_pool(lua_State *L, ngx_http_request_t *r,
    ngx_str_t key, ngx_int_t pool_size, ngx_int_t backlog,
    ngx_http_lua_socket_pool_t **spool)
{
    u_char *p;
    size_t size, key_len;
    ngx_int_t i;
    ngx_http_lua_socket_pool_t *sp;
    ngx_http_lua_socket_pool_item_t *items;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket connection pool size: %i, backlog: %i",
                   pool_size, backlog);

    key_len = ngx_align(key.len + 1, sizeof(void *));

    size = sizeof(ngx_http_lua_socket_pool_t) - 1 + key_len
           + sizeof(ngx_http_lua_socket_pool_item_t) * pool_size;





    sp = lua_newuserdata(L, size);
    if (sp == ((void*)0)) {
        luaL_error(L, "no memory");
        return;
    }

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          pool_udata_metatable_key));
    lua_rawget(L, LUA_REGISTRYINDEX);
    lua_setmetatable(L, -2);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket keepalive create connection pool for key"
                   " \"%V\"", &key);
    lua_rawset(L, -3);


    lua_pop(L, 1);

    sp->backlog = backlog;
    sp->size = pool_size;
    sp->connections = 0;
    sp->lua_vm = ngx_http_lua_get_lua_vm(r, ((void*)0));

    ngx_queue_init(&sp->cache_connect_op);
    ngx_queue_init(&sp->wait_connect_op);
    ngx_queue_init(&sp->cache);
    ngx_queue_init(&sp->free);

    p = ngx_copy(sp->key, key.data, key.len);
    *p++ = '\0';

    items = (ngx_http_lua_socket_pool_item_t *) (sp->key + key_len);

    dd("items: %p", items);

    ngx_http_lua_assert((void *) items == ngx_align_ptr(items, sizeof(void *)));

    for (i = 0; i < pool_size; i++) {
        ngx_queue_insert_head(&sp->free, &items[i].queue);
        items[i].socket_pool = sp;
    }

    *spool = sp;
}
