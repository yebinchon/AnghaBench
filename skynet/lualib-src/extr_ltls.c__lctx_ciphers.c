
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx {int ctx; } ;
typedef int lua_State ;


 int SSL_CTX_set_tlsext_use_srtp (int ,char const*) ;
 struct ssl_ctx* _check_sslctx (int *,int) ;
 int luaL_error (int *,char*,...) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int
_lctx_ciphers(lua_State* L) {
    struct ssl_ctx* ctx_p = _check_sslctx(L, 1);
    const char* s = lua_tostring(L, 2);
    if(!s) {
        luaL_error(L, "need cipher list");
    }
    int ret = SSL_CTX_set_tlsext_use_srtp(ctx_p->ctx, s);
    if(ret != 0) {
        luaL_error(L, "SSL_CTX_set_tlsext_use_srtp error:%d", ret);
    }
    return 0;
}
