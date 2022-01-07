
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int out_bio; } ;
typedef int outbuff ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int BIO_ctrl_pending (int ) ;
 int BIO_read (int ,char*,int) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*,int) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int
_bio_read(lua_State* L, struct tls_context* tls_p) {
    char outbuff[4096];
    int all_read = 0;
    int read = 0;
    int pending = BIO_ctrl_pending(tls_p->out_bio);
    if(pending >0) {
        luaL_Buffer b;
        luaL_buffinit(L, &b);
        while(pending > 0) {
            read = BIO_read(tls_p->out_bio, outbuff, sizeof(outbuff));

            if(read <= 0) {
                luaL_error(L, "BIO_read error:%d", read);
            }else if(read <= sizeof(outbuff)) {
                all_read += read;
                luaL_addlstring(&b, (const char*)outbuff, read);
            }else {
                luaL_error(L, "invalid BIO_read:%d", read);
            }
            pending = BIO_ctrl_pending(tls_p->out_bio);
        }
        if(all_read>0) {
            luaL_pushresult(&b);
        }
    }
    return all_read;
}
