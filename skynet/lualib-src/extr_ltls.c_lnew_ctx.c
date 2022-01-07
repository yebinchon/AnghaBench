
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_ctx {int ctx; } ;
typedef int lua_State ;
struct TYPE_3__ {char* member_0; int * member_1; } ;
typedef TYPE_1__ luaL_Reg ;
typedef int buf ;


 int ERR_error_string_n (unsigned int,char*,int) ;
 unsigned int ERR_get_error () ;
 int SSL_CTX_new (int ) ;
 int SSLv23_method () ;
 int * _lctx_cert ;
 int * _lctx_ciphers ;
 int _lctx_gc ;
 int luaL_error (int *,char*,char*) ;
 int luaL_newlib (int *,TYPE_1__*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static int
lnew_ctx(lua_State* L) {
    struct ssl_ctx* ctx_p = (struct ssl_ctx*)lua_newuserdata(L, sizeof(*ctx_p));
    ctx_p->ctx = SSL_CTX_new(SSLv23_method());
    if(!ctx_p->ctx) {
        unsigned int err = ERR_get_error();
        char buf[256];
        ERR_error_string_n(err, buf, sizeof(buf));
        luaL_error(L, "SSL_CTX_new client faild. %s\n", buf);
    }

    if(luaL_newmetatable(L, "_TLS_SSLCTX_METATABLE_")) {
        luaL_Reg l[] = {
            {"set_ciphers", _lctx_ciphers},
            {"set_cert", _lctx_cert},
            {((void*)0), ((void*)0)},
        };

        luaL_newlib(L, l);
        lua_setfield(L, -2, "__index");
        lua_pushcfunction(L, _lctx_gc);
        lua_setfield(L, -2, "__gc");
    }
    lua_setmetatable(L, -2);
    return 1;
}
