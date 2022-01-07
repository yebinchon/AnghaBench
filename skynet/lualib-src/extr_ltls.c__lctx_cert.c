
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx {int ctx; } ;
typedef int lua_State ;


 int SSL_CTX_check_private_key (int ) ;
 int SSL_CTX_use_PrivateKey_file (int ,char const*,int ) ;
 int SSL_CTX_use_certificate_file (int ,char const*,int ) ;
 int SSL_FILETYPE_PEM ;
 struct ssl_ctx* _check_sslctx (int *,int) ;
 int luaL_error (int *,char*,...) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int
_lctx_cert(lua_State* L) {
    struct ssl_ctx* ctx_p = _check_sslctx(L, 1);
    const char* certfile = lua_tostring(L, 2);
    const char* key = lua_tostring(L, 3);
    if(!certfile) {
        luaL_error(L, "need certfile");
    }

    if(!key) {
        luaL_error(L, "need private key");
    }

    int ret = SSL_CTX_use_certificate_file(ctx_p->ctx, certfile, SSL_FILETYPE_PEM);
    if(ret != 1) {
        luaL_error(L, "SSL_CTX_use_certificate_file error:%d", ret);
    }

    ret = SSL_CTX_use_PrivateKey_file(ctx_p->ctx, key, SSL_FILETYPE_PEM);
    if(ret != 1) {
        luaL_error(L, "SSL_CTX_use_PrivateKey_file error:%d", ret);
    }
    ret = SSL_CTX_check_private_key(ctx_p->ctx);
    if(ret != 1) {
        luaL_error(L, "SSL_CTX_check_private_key error:%d", ret);
    }
    return 0;
}
