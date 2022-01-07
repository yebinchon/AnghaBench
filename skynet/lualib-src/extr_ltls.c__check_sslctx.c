
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx {int dummy; } ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static struct ssl_ctx *
_check_sslctx(lua_State* L, int idx) {
    struct ssl_ctx* ctx_p = (struct ssl_ctx*)lua_touserdata(L, idx);
    if(!ctx_p) {
        luaL_error(L, "need sslctx");
    }
    return ctx_p;
}
