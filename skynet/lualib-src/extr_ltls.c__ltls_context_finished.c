
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int ssl; } ;
typedef int lua_State ;


 int SSL_is_init_finished (int ) ;
 struct tls_context* _check_context (int *,int) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int
_ltls_context_finished(lua_State* L) {
    struct tls_context* tls_p = _check_context(L, 1);
    int b = SSL_is_init_finished(tls_p->ssl);
    lua_pushboolean(L, b);
    return 1;
}
