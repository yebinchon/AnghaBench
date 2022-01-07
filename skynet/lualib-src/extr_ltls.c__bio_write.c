
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int in_bio; } ;
typedef int lua_State ;


 int BIO_write (int ,char*,size_t) ;
 int luaL_error (int *,char*,int) ;

__attribute__((used)) static void
_bio_write(lua_State* L, struct tls_context* tls_p, const char* s, size_t len) {
    char* p = (char*)s;
    size_t sz = len;
    while(sz > 0) {
        int written = BIO_write(tls_p->in_bio, p, sz);

        if(written <= 0) {
            luaL_error(L, "BIO_write error:%d", written);
        }else if (written <= sz) {
            p += written;
            sz -= written;
        }else {
            luaL_error(L, "invalid BIO_write:%d", written);
        }
    }
}
