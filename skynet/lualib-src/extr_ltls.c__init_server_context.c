
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int is_server; int ssl; } ;
struct ssl_ctx {int dummy; } ;
typedef int lua_State ;


 int SSL_set_accept_state (int ) ;
 int _init_bio (int *,struct tls_context*,struct ssl_ctx*) ;

__attribute__((used)) static void
_init_server_context(lua_State* L, struct tls_context* tls_p, struct ssl_ctx* ctx_p) {
    tls_p->is_server = 1;
    _init_bio(L, tls_p, ctx_p);
    SSL_set_accept_state(tls_p->ssl);
}
