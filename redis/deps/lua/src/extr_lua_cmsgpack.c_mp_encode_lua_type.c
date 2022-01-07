
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 int LUACMSGPACK_MAX_NESTING ;

 int LUA_TNIL ;



 int lua_isinteger (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_type (int *,int) ;
 int mp_encode_lua_bool (int *,int *) ;
 int mp_encode_lua_integer (int *,int *) ;
 int mp_encode_lua_null (int *,int *) ;
 int mp_encode_lua_number (int *,int *) ;
 int mp_encode_lua_string (int *,int *) ;
 int mp_encode_lua_table (int *,int *,int) ;

void mp_encode_lua_type(lua_State *L, mp_buf *buf, int level) {
    int t = lua_type(L,-1);



    if (t == 128 && level == LUACMSGPACK_MAX_NESTING) t = LUA_TNIL;
    switch(t) {
    case 129: mp_encode_lua_string(L,buf); break;
    case 131: mp_encode_lua_bool(L,buf); break;
    case 130:

        mp_encode_lua_number(L,buf); break;
    case 128: mp_encode_lua_table(L,buf,level); break;
    default: mp_encode_lua_null(L,buf); break;
    }
    lua_pop(L,1);
}
