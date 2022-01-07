
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int ssl; } ;
typedef int lua_State ;


 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_do_handshake (int ) ;
 int SSL_get_error (int ,int) ;
 scalar_t__ SSL_is_init_finished (int ) ;
 int _bio_read (int *,struct tls_context*) ;
 int _bio_write (int *,struct tls_context*,char const*,size_t) ;
 struct tls_context* _check_context (int *,int) ;
 int luaL_error (int *,char*,...) ;
 char* lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int
_ltls_context_handshake(lua_State* L) {
    struct tls_context* tls_p = _check_context(L, 1);
    size_t slen = 0;
    const char* exchange = lua_tolstring(L, 2, &slen);


    if(SSL_is_init_finished(tls_p->ssl)) {
        luaL_error(L, "handshake is finished");
    }


    if(slen > 0 && exchange != ((void*)0)) {
        _bio_write(L, tls_p, exchange, slen);
    }


    if(!SSL_is_init_finished(tls_p->ssl)) {
        int ret = SSL_do_handshake(tls_p->ssl);
        if(ret == 1) {
            return 0;
        } else if (ret < 0) {
            int err = SSL_get_error(tls_p->ssl, ret);
            if(err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
                int all_read = _bio_read(L, tls_p);
                if(all_read>0) {
                    return 1;
                }
            } else {
                luaL_error(L, "SSL_do_handshake error:%d ret:%d", err, ret);
            }
        } else {
            int err = SSL_get_error(tls_p->ssl, ret);
            luaL_error(L, "SSL_do_handshake error:%d ret:%d", err, ret);
        }
    }
    return 0;
}
