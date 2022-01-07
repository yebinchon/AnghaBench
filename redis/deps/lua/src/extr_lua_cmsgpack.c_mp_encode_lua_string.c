
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 char* lua_tolstring (int *,int,size_t*) ;
 int mp_encode_bytes (int *,int *,unsigned char const*,size_t) ;

void mp_encode_lua_string(lua_State *L, mp_buf *buf) {
    size_t len;
    const char *s;

    s = lua_tolstring(L,-1,&len);
    mp_encode_bytes(L,buf,(const unsigned char*)s,len);
}
