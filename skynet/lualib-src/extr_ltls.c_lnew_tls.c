
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tls_context {int is_close; } ;
struct ssl_ctx {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;


 struct ssl_ctx* _check_sslctx (int *,int) ;
 int _init_client_context (int *,struct tls_context*,struct ssl_ctx*) ;
 int _init_server_context (int *,struct tls_context*,struct ssl_ctx*) ;
 int * _ltls_context_close ;
 int * _ltls_context_finished ;
 int * _ltls_context_handshake ;
 int * _ltls_context_read ;
 int * _ltls_context_write ;
 int luaL_error (int *,char*,char const*) ;
 int luaL_newlib (int *,TYPE_1__*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 char* luaL_optstring (int *,int,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_setuservalue (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
lnew_tls(lua_State* L) {
    struct tls_context* tls_p = (struct tls_context*)lua_newuserdata(L, sizeof(*tls_p));
    tls_p->is_close = 0;
    const char* method = luaL_optstring(L, 1, "nil");
    struct ssl_ctx* ctx_p = _check_sslctx(L, 2);
    lua_pushvalue(L, 2);
    lua_setuservalue(L, -2);

    if(strcmp(method, "client") == 0) {
        _init_client_context(L, tls_p, ctx_p);
    }else if(strcmp(method, "server") == 0) {
        _init_server_context(L, tls_p, ctx_p);
    } else {
        luaL_error(L, "invalid method:%s e.g[server, client]", method);
    }

    if(luaL_newmetatable(L, "_TLS_CONTEXT_METATABLE_")) {
        luaL_Reg l[] = {
            {"close", _ltls_context_close},
            {"finished", _ltls_context_finished},
            {"handshake", _ltls_context_handshake},
            {"read", _ltls_context_read},
            {"write", _ltls_context_write},
            {((void*)0), ((void*)0)},
        };
        luaL_newlib(L, l);
        lua_setfield(L, -2, "__index");
        lua_pushcfunction(L, _ltls_context_close);
        lua_setfield(L, -2, "__gc");
    }
    lua_setmetatable(L, -2);
    return 1;
}
