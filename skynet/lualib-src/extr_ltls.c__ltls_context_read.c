
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int ssl; } ;
typedef int outbuff ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_get_error (int ,int) ;
 int SSL_read (int ,char*,int) ;
 int _bio_write (int *,struct tls_context*,char const*,size_t) ;
 struct tls_context* _check_context (int *,int) ;
 int luaL_addlstring (int *,char*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*,int) ;
 int luaL_pushresult (int *) ;
 char* lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int
_ltls_context_read(lua_State* L) {
    struct tls_context* tls_p = _check_context(L, 1);
    size_t slen = 0;
    const char* encrypted_data = lua_tolstring(L, 2, &slen);


    if(slen>0 && encrypted_data) {
        _bio_write(L, tls_p, encrypted_data, slen);
    }

    char outbuff[4096];
    int read = 0;
    luaL_Buffer b;
    luaL_buffinit(L, &b);

    do {
        read = SSL_read(tls_p->ssl, outbuff, sizeof(outbuff));
        if(read <= 0) {
            int err = SSL_get_error(tls_p->ssl, read);
            if(err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
                break;
            }
            luaL_error(L, "SSL_read error:%d", err);
        }else if(read <= sizeof(outbuff)) {
            luaL_addlstring(&b, outbuff, read);
        }else {
            luaL_error(L, "invalid SSL_read:%d", read);
        }
    }while(1);
    luaL_pushresult(&b);
    return 1;
}
