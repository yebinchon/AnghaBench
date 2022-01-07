
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int ssl; } ;
typedef int lua_State ;


 int SSL_get_error (int ,int) ;
 int SSL_write (int ,char*,size_t) ;
 int _bio_read (int *,struct tls_context*) ;
 struct tls_context* _check_context (int *,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushstring (int *,char*) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int
_ltls_context_write(lua_State* L) {
    struct tls_context* tls_p = _check_context(L, 1);
    size_t slen = 0;
    char* unencrypted_data = (char*)lua_tolstring(L, 2, &slen);

    while(slen > 0) {
        int written = SSL_write(tls_p->ssl, unencrypted_data, slen);
        if(written <= 0) {
            int err = SSL_get_error(tls_p->ssl, written);
            luaL_error(L, "SSL_write error:%d", err);
        }else if(written <= slen) {
            unencrypted_data += written;
            slen -= written;
        }else {
            luaL_error(L, "invalid SSL_write:%d", written);
        }
    }

    int all_read = _bio_read(L, tls_p);
    if(all_read <= 0) {
        lua_pushstring(L, "");
    }
    return 1;
}
