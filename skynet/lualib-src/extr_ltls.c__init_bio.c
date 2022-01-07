
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {void* out_bio; void* in_bio; int ssl; } ;
struct ssl_ctx {int ctx; } ;
typedef int lua_State ;


 void* BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_set_mem_eof_return (void*,int) ;
 int SSL_new (int ) ;
 int SSL_set_bio (int ,void*,void*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static void
_init_bio(lua_State* L, struct tls_context* tls_p, struct ssl_ctx* ctx_p) {
    tls_p->ssl = SSL_new(ctx_p->ctx);
    if(!tls_p->ssl) {
        luaL_error(L, "SSL_new faild");
    }

    tls_p->in_bio = BIO_new(BIO_s_mem());
    if(!tls_p->in_bio) {
        luaL_error(L, "new in bio faild");
    }
    BIO_set_mem_eof_return(tls_p->in_bio, -1);

    tls_p->out_bio = BIO_new(BIO_s_mem());
    if(!tls_p->out_bio) {
        luaL_error(L, "new out bio faild");
    }
    BIO_set_mem_eof_return(tls_p->out_bio, -1);

    SSL_set_bio(tls_p->ssl, tls_p->in_bio, tls_p->out_bio);
}
