
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 int luaL_checkstack (int *,int,char*) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int mp_encode_lua_type (int *,int *,int) ;
 int mp_encode_map (int *,int *,size_t) ;

void mp_encode_lua_table_as_map(lua_State *L, mp_buf *buf, int level) {
    size_t len = 0;





    luaL_checkstack(L, 3, "in function mp_encode_lua_table_as_map");
    lua_pushnil(L);
    while(lua_next(L,-2)) {
        lua_pop(L,1);
        len++;
    }


    mp_encode_map(L,buf,len);
    lua_pushnil(L);
    while(lua_next(L,-2)) {

        lua_pushvalue(L,-2);
        mp_encode_lua_type(L,buf,level+1);
        mp_encode_lua_type(L,buf,level+1);
    }
}
