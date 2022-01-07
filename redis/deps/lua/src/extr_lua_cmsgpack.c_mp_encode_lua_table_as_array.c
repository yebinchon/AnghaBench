
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 int luaL_checkstack (int *,int,char*) ;
 int lua_gettable (int *,int) ;
 size_t lua_objlen (int *,int) ;
 int lua_pushnumber (int *,size_t) ;
 size_t lua_rawlen (int *,int) ;
 int mp_encode_array (int *,int *,size_t) ;
 int mp_encode_lua_type (int *,int *,int) ;

void mp_encode_lua_table_as_array(lua_State *L, mp_buf *buf, int level) {

    size_t len = lua_objlen(L,-1), j;




    mp_encode_array(L,buf,len);
    luaL_checkstack(L, 1, "in function mp_encode_lua_table_as_array");
    for (j = 1; j <= len; j++) {
        lua_pushnumber(L,j);
        lua_gettable(L,-2);
        mp_encode_lua_type(L,buf,level+1);
    }
}
