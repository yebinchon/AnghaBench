
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx {int * ctx; } ;
typedef int lua_State ;


 int SSL_CTX_free (int *) ;
 struct ssl_ctx* _check_sslctx (int *,int) ;

__attribute__((used)) static int
_lctx_gc(lua_State* L) {
    struct ssl_ctx* ctx_p = _check_sslctx(L, 1);
    if(ctx_p->ctx) {
        SSL_CTX_free(ctx_p->ctx);
        ctx_p->ctx = ((void*)0);
    }
    return 0;
}
