
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int is_close; int * out_bio; int * in_bio; int * ssl; } ;
typedef int lua_State ;


 int SSL_free (int *) ;
 struct tls_context* lua_touserdata (int *,int) ;

__attribute__((used)) static int
_ltls_context_close(lua_State* L) {
    struct tls_context* tls_p = lua_touserdata(L, 1);
    if(!tls_p->is_close) {
        SSL_free(tls_p->ssl);
        tls_p->ssl = ((void*)0);
        tls_p->in_bio = ((void*)0);
        tls_p->out_bio = ((void*)0);
        tls_p->is_close = 1;
    }
    return 0;
}
